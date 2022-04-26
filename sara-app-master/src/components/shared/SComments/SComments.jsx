/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import React, { Component } from 'react';
import styles from './SComments.module.css';
import  { getFormattedDate } from '@utils/date&time';

import SEmpty from '@components/shared/SEmpty';
import SSpinner from '@components/shared/SSpinner';

const SERVER_URL = process.env.REACT_APP_SERVER_URL;

class SComments extends Component {
  render() {
    return(
      <div className={`${styles.container}`}>
        {
          this.state.loading ?
          <SSpinner />
          :
          this.state.comments && this.state.comments.length > 0 ?
          this.state.comments.map((comment, i) => {
            const date = comment.date.split('T')[0];
            return(
              <div className={styles.commentContainer} key={i}>
                <div className={styles.date}>
                  Comentario enviado el {getFormattedDate(date)}
                </div>
                <div className={styles.comment}>
                  {comment.comment}
                </div>
                { comment.audio && <audio src={`${SERVER_URL}${comment.audio}`} 
                                          type='video.webm'
                                          controls
                                          controlsList='nodownload' /> }
              </div>
            );
          })
          : 
          <SEmpty>
            No se encontraron comentarios para esta actividad.
          </SEmpty>
        }
      </div>
    );
  }

  constructor(props) {
    super(props);
    this.state = { comments: null, loading: false };
  }

  componentDidMount() {
    this.getCommentsFromSessions();
  }

  /** Métodos extra */
  getCommentsFromSessions() {
    this.setState({ loading: true });

    /** Obtener los mensajes a partir de las sesiones */
    const sessions = Object.values(this.props.data);
    let comments = [];
    sessions.forEach(session => {
      const { audio, comment, date_end } = session;
      if (audio || (comment && comment.trim() !== ''))
        comments.push({ audio, comment, date: date_end });
    });

    this.setState({ comments, loading: false });
  }
}

export default SComments;