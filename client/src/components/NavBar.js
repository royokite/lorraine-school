import React from "react";
import { NavLink } from "react-router-dom";

function NavBar() {
    let activeStyle = {
        backgroundColor: "rgb(49, 46, 129)", 
    }; 

    const imageStyle = {
        height: "4rem", 
        width: "5rem", 
        alignSelf: "center", 
        display: "block", 
        marginLeft: "auto", 
        marginRight: "auto", 
        // marginBottom: "2rem",
        // paddingTop: "1rem",
    };

    return (
        <nav className="bg-gray-800  mt-0 mb-3 sticky w-full z-10 top-0 flex flex-wrap text-slate-200">
            <article className="flex-none">
                <NavLink to="/">
                    <img src="./images/lorraine-logo.png" alt="school logo" style={imageStyle}/>
                </NavLink>
            </article>
            <article className="mt-5 flex-none ml-auto">
                <NavLink to="/" exact="true" end className="bg-gray-800 m-2 p-2 hover:bg-indigo-500" style={({ isActive }) => isActive ? activeStyle : undefined }>Dashboard</NavLink>
                <NavLink to="/instructors" exact="true" className="bg-gray-800 m-2 p-2 hover:bg-indigo-500" style={({ isActive }) => isActive ? activeStyle : undefined }>Instructors</NavLink>
                <NavLink to="/students" exact="true" className="bg-gray-800 m-2 p-2 hover:bg-indigo-500" style={({ isActive }) => isActive ? activeStyle : undefined }>Students</NavLink>
                <NavLink to="/courses" exact="true" className="bg-gray-800 m-2 p-2 hover:bg-indigo-500" style={({ isActive }) => isActive ? activeStyle : undefined }>Courses</NavLink>
            </article>
        </nav>
    );

}

export default NavBar;