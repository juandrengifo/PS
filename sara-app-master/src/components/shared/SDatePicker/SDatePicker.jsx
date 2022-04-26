/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import React, { Component } from 'react';
import styles from './SDatePicker.module.css';
import { connect } from 'react-redux';
import { setFeedDate } from '@actions/feedback';
import DatePicker, { registerLocale } from 'react-datepicker';
import es from 'date-fns/locale/es';
registerLocale('es', es);

class SDatePicker extends Component {
    render() {
        const { form } = this.props;
        let showMonthDropdown = false;
        let showMonthYear = true;
        let showYearDropdown = false;
        let style = styles.input;
        let dateFormat = "MMMM 'de' yyyy";
        if (form) {
            showMonthDropdown = true;
            showMonthYear = false;
            showYearDropdown = true;
            style = styles.completeInput;
            dateFormat = "dd/MM/yyyy";
        }

        return(
            <div>
                <DatePicker
                    className={style}
                    dateFormat={dateFormat}
                    locale='es'
                    onChange={this.onDateChanged}
                    popperPlacement='top-end'
                    ref={this.pickerRef}
                    selected={this.state.date}
                    showMonthDropdown={showMonthDropdown}
                    showMonthYearPicker={showMonthYear}
                    showFullMonthYearPicker
                    showYearDropdown={showYearDropdown}
                    scrollableYearDropdown
                    yearDropdownItemNumber={30}
                    withPortal />
            </div>
        );
    }

    constructor(props) {
        super(props);
        this.state = { date: null };
        this.pickerRef = React.createRef();
        this.onDateChanged = this.onDateChanged.bind(this);
    }

    componentDidMount() {
        /** Deshabilitar el teclado */
        if (this.pickerRef && this.pickerRef.current.input)
            this.pickerRef.current.input.readOnly = true;
        
        const { date, feedDate, form } = this.props;
        this.setState({ date: form ? date : feedDate });
    }

    componentDidUpdate(prevProps) {
        if (this.props.date !== prevProps.date)
            this.setState({ date: this.props.date });
    }

    /** Métodos extra */
    onDateChanged(date) {
        this.setState({ date });
        const { form, name } = this.props;
        if (form)
            this.props.onChange({ target: { value: date, name }});
        else
            this.props.setFeedDate(date);
    }
}

/** Elementos del store */
const mapStateToProps = (state) => {
    return {
        feedDate: state.feedback.feedDate
    };
}

const mapActionsToProps = {
    setFeedDate
};

export default connect(
    mapStateToProps,
    mapActionsToProps
)(SDatePicker);