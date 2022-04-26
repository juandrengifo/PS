/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
    /** Definir el modelo del usuario */
    let User = sequelize.define('User', {
        id: {
            type: DataTypes.TEXT,
            allowNull: false,
            primaryKey: true,
        },
        active: {
            type: DataTypes.BOOLEAN,
            allowNull: false,
        },
        birthday_date: {
            type: DataTypes.DATE,
            allowNull: false,
        },
        color: {
            type: DataTypes.TEXT,
            allowNull: false,
        },
        email: {
            type: DataTypes.TEXT,
            allowNull: false,
            unique: true,
        },
        gender: {
            type: DataTypes.TEXT,
            allowNull: false,
        },
        is_admin: {
            type: DataTypes.BOOLEAN,
            defaultValue: false
        },
        last_name: {
            type: DataTypes.TEXT,
            allowNull: false,
        },
        name: {
            type: DataTypes.TEXT,
            allowNull: false,
        },
        password: {
            type: DataTypes.TEXT,
            allowNull: false,
        },
        profile_img: {
            type: DataTypes.TEXT,
        },
        score: {
            type: DataTypes.INTEGER,
            defaultValue: 0
        },
        thumbnail_alias: {
            type: DataTypes.TEXT,
            allowNull: false,
        },
        username: {
            type: DataTypes.TEXT,
            allowNull: false,
            unique: true,
        }
    });

    /** Asociaciones con otros modelos */
    User.associate = (models) => {
        /** Un usuario solo puede tener un avatar asignado */
        User.belongsTo(models.Avatar_Variation, {
            foreignKey: 'id_avatar_variation'
        });

        User.belongsTo(models.Role, {
            foreignKey: 'id_role'
        });

        /** Un terapeuta puede tener varios pacientes */
        User.belongsToMany(models.User, {
            as: 'Patients',
            through: 'Therapists_Patients',
            foreignKey: 'id_therapist'
        });

        /** Un paciente puede tener varios terapeutas */
        User.belongsToMany(models.User, {
            as: 'Therapists',
            through: 'Therapists_Patients',
            foreignKey: 'id_patient',
        });

        /** Un usuario puede tener varios aspectos de coleccionables */
        User.belongsToMany(models.Skin, {
            through: 'Users_Skins',
            foreignKey: 'id_user',
        });
    }

    return User;
}