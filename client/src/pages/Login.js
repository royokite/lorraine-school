import React, {useState} from "react";
import LoginForm from "../components/LoginForm"
import SignUpForm from "../components/SignUpForm"

function Login() {
    const[selectForm, setSelectForm] = useState(true)
    return (
        <>
            {selectForm ? <LoginForm onSelectForm={setSelectForm} /> : <SignUpForm onSelectForm={setSelectForm}/>}
        </>
    );

}

export default Login;