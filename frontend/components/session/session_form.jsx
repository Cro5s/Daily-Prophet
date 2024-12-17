import React from 'react';

class SessionForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = { name: '', username: '', email: '', password: '' };
        this.handleSubmit = this.handleSubmit.bind(this);
        this.demoLogin = this.demoLogin.bind(this);
    }

    componentWillUnmount() {
        this.props.clearErrors();
    }

    update(field) {
        return (e) => {
            this.setState({ [field]: e.currentTarget.value });
        };
    }

    handleSubmit(e) {
        e.preventDefault();

        const user = Object.assign({}, this.state);
        this.props.processForm(user).then(this.props.closeModal);
    }

    demoLogin(e) {
        e.preventDefault();

        const demo = {
            name: 'Guest User',
            username: 'Guest',
            email: 'guest@email.com',
            password: 'password',
        };

        (this.props.formType === 'Log In'
            ? this.props.processForm(demo)
            : this.props.login(demo)
        ).then(this.props.closeModal);
    }

    render() {
        const errorsList = this.props.errors?.map((error, idx) => (
            <li className="session-form-errors" key={idx}>
                {error}
            </li>
        ));

        return (
            <div className="session-form-container">
                <div className="session-close-div">
                    <button
                        className="session-close"
                        onClick={this.props.closeModal}
                    >
                        &#x2715;
                    </button>
                </div>

                {/* <img src={window.ModalLogLeft} /> */}

                <div className="session-form-div">
                    <header className="session-form-header">
                        {this.props.header}
                    </header>

                    {this.props.formType === 'Log In' ? (
                        <div className="session-form-details-div">
                            <p className="session-form-details">
                                Sign in to get personalized story
                                recommendations, follow authors and topics you
                                love, and interact with stories.
                            </p>
                        </div>
                    ) : (
                        <div className="session-form-details-div">
                            <p className="session-form-details">
                                Create an account to receive great stories in
                                your inbox, personalize your homepage, and
                                follow authors and topics that you love.
                            </p>
                        </div>
                    )}

                    <form className="session-form" onSubmit={this.handleSubmit}>
                        <div className="session-form-signup-labels">
                            <div className="session-form-name-labels">
                                {this.props.formType === 'Sign Up' ? (
                                    <label className="session-form-name-label">
                                        Your full name
                                    </label>
                                ) : null}

                                {this.props.formType === 'Sign Up' ? (
                                    <input
                                        className="session-form-name-input"
                                        type="text"
                                        value={this.state.name}
                                        onChange={this.update('name')}
                                    />
                                ) : null}
                            </div>

                            <div className="session-form-email-labels">
                                {this.props.formType === 'Sign Up' ? (
                                    <label className="session-form-email-label">
                                        Your email
                                    </label>
                                ) : null}

                                {this.props.formType === 'Sign Up' ? (
                                    <input
                                        className="session-form-email-input"
                                        type="text"
                                        value={this.state.email}
                                        onChange={this.update('email')}
                                    />
                                ) : null}
                            </div>
                        </div>

                        <label className="session-form-label">
                            Your username
                        </label>
                        <input
                            className="session-form-input"
                            type="text"
                            value={this.state.username}
                            onChange={this.update('username')}
                        />

                        <label className="session-form-label">
                            Your password
                        </label>
                        <input
                            className="session-form-input"
                            type="password"
                            value={this.state.password}
                            onChange={this.update('password')}
                        />

                        <div className="session-errors">
                            <ul>{errorsList}</ul>
                        </div>

                        <button
                            className="session-form-submit"
                            onClick={this.handleSubmit}
                        >
                            {this.props.formType}
                        </button>
                    </form>

                    <footer className="session-form-footer">
                        {this.props.footer} {this.props.otherForm}
                        <button
                            className="session-demo-submit"
                            onClick={this.demoLogin}
                        >
                            Demo Login
                        </button>
                        <p className="session-form-footer-terms">{`To make Daily Prophet work, we log user data and share it with service providers. Click ${this.props.formType} above to accept Daily Prophet’s Terms of Service & Privacy Policy.`}</p>
                    </footer>
                </div>
            </div>
        );
    }
}

export default SessionForm;
