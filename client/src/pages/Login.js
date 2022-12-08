import React, {useState} from "react";
import LoginForm from "../components/LoginForm"
import SignUpForm from "../components/SignUpForm"

function Login({ onLogin }) {
    const imageStyle = {
        height: "8rem", 
        width: "10rem", 
        alignSelf: "center", 
        display: "block", 
        marginLeft: "auto", 
        marginRight: "auto", 
        marginBottom: "2rem",
        paddingTop: "1rem",
    }

    const [selectForm, setSelectForm] = useState(true)
    return (
        <section>
            <img src="./images/lorraine-logo.png" alt="school logo" style={imageStyle}/>
            {selectForm ? <LoginForm onSelectForm={setSelectForm} onLogin={onLogin} /> : <SignUpForm onSelectForm={setSelectForm} onLogin={onLogin} />}
        </section>
    );

}

export default Login;
