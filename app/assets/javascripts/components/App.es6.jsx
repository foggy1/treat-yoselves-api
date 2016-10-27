class App extends React.Component {
  constructor() {
    super();
    this.state = {
      user: {}
    };
    this.updateNewUser = this.updateNewUser.bind(this);
    this.updateLogin = this.updateLogin.bind(this);
  }

  updateNewUser(userData) {
    userData["loggedIn"] = true
    this.setState({user: userData})
  }

  updateLogin(userData) {
    userData["loggedIn"] = true
    this.setState({user: userData})
  }

  render() {
    if (this.state.user.loggedIn) {
      return (
        <nav>
          <ul className="loggedin-nav-ul">
            <li className="loggedin-nav-li"><a href={'/users/' + this.state.user.id}>{this.state.user.username}</a></li>
            <li className="loggedin-nav-li"><a href="/users/logout">logout</a></li>
          </ul>
        </nav>
      )
    }
    else {
      return (
        <nav>
          <ul className="loggedout-nav-ul">
            <li className="loggedout-nav-li"><NewUser registerComplete={this.updateNewUser}/></li>
            <li className="loggedout-nav-li"><Login loginComplete={this.updateLogin}/></li>
          </ul>
        </nav>
      )
    }
  }
}