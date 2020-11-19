<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 21.10.2020
  Time: 9:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <style>
        section{
            color: #4a5568;
            font-family: "Roboto";
            overflow: hidden;
        }
        .image_events{
            width: 350px;
            height: 200px;
        }
        .events_contain{
            margin-top: 3%;
            width: 350px;
            height: 110%;
            border: 1px solid lightgrey;
        }
        .category{
            margin-top: 3%;
            margin-left: 4%;
            font-size: 15px;
            font-family: "Roboto";
            color: #4a5568;
        }
        .theme{
            margin-left: 4%;
            font-family: "Roboto";
            color: black;
            font-size: 35px;
        }
        .all_events{
            display: flex;
            width: 119%;
            margin-left: -10%;
        }
        .news_bord{
            margin-left: -15%;
            width: 130%;
        }
        .marked_b{
            margin-left: 20%;
        }
        .span_comments{
            border-right: 2px solid grey;
        }
        .tag_g{
            margin-left: 4%;
        }
        .all_blocks_clubs{
            width: 140%;
            margin-left: -20%;
            display: flex;
        }
        .clubs_block{
            font-family: "Roboto";
            height: 280px;
            width: 700px;
            display: flex;
        }
        .blocks_desc{
            margin-left: 4%;
        }
        .footer_div{
            background-color: black;
            color: white;
        }
        <!-- -->
        body { color: #ccc }
        .footer-widget p {
            margin-bottom: 27px;
        }
        p {
            font-family: 'Nunito', sans-serif;
            font-size: 16px;
            color:white;
            line-height: 28px;
        }

        .animate-border {
            position: relative;
            display: block;
            width: 115px;
            height: 3px;
            background: #007bff; }

        .animate-border:after {
            position: absolute;
            content: "";
            width: 35px;
            height: 3px;
            left: 0;
            bottom: 0;
            border-left: 10px solid #fff;
            border-right: 10px solid #fff;
            -webkit-animation: animborder 2s linear infinite;
            animation: animborder 2s linear infinite; }

        @-webkit-keyframes animborder {
            0% {
                -webkit-transform: translateX(0px);
                transform: translateX(0px); }
            100% {
                -webkit-transform: translateX(113px);
                transform: translateX(113px); } }

        @keyframes animborder {
            0% {
                -webkit-transform: translateX(0px);
                transform: translateX(0px); }
            100% {
                -webkit-transform: translateX(113px);
                transform: translateX(113px); } }

        .animate-border.border-white:after {
            border-color: #fff; }

        .animate-border.border-yellow:after {
            border-color: #F5B02E; }

        .animate-border.border-orange:after {
            border-right-color: #007bff;
            border-left-color: #007bff; }

        .animate-border.border-ash:after {
            border-right-color: #EEF0EF;
            border-left-color: #EEF0EF; }

        .animate-border.border-offwhite:after {
            border-right-color: #F7F9F8;
            border-left-color: #F7F9F8; }

        /* Animated heading border */
        @keyframes primary-short {
            0% {
                width: 15%; }
            50% {
                width: 90%; }
            100% {
                width: 10%; } }

        @keyframes primary-long {
            0% {
                width: 80%; }
            50% {
                width: 0%; }
            100% {
                width: 80%; } }

        .dk-footer {
            padding: 75px 0 0;
            background-color: #151414;
            position: relative;
            z-index: 2; }
        .dk-footer .contact-us {
            margin-top: 0;
            margin-bottom: 30px;
            padding-left: 80px; }
        .dk-footer .contact-us .contact-info {
            margin-left: 50px; }
        .dk-footer .contact-us.contact-us-last {
            margin-left: -80px; }
        .dk-footer .contact-icon i {
            font-size: 24px;
            top: -15px;
            position: relative;
            color:#007bff; }

        .dk-footer-box-info {
            position: absolute;
            top: -122px;
            background: #202020;
            padding: 40px;
            z-index: 2; }
        .dk-footer-box-info .footer-social-link h3 {
            color: #fff;
            font-size: 24px;
            margin-bottom: 25px; }
        .dk-footer-box-info .footer-social-link ul {
            list-style-type: none;
            padding: 0;
            margin: 0; }
        .dk-footer-box-info .footer-social-link li {
            display: inline-block; }
        .dk-footer-box-info .footer-social-link a i {
            display: block;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            text-align: center;
            line-height: 40px;
            background: #000;
            margin-right: 5px;
            color: #fff; }
        .dk-footer-box-info .footer-social-link a i.fa-facebook {
            background-color: #3B5998; }
        .dk-footer-box-info .footer-social-link a i.fa-twitter {
            background-color: #55ACEE; }
        .dk-footer-box-info .footer-social-link a i.fa-google-plus {
            background-color: #DD4B39; }
        .dk-footer-box-info .footer-social-link a i.fa-linkedin {
            background-color: #0976B4; }
        .dk-footer-box-info .footer-social-link a i.fa-instagram {
            background-color: #B7242A; }

        .footer-awarad {
            margin-top: 285px;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-flex: 0;
            -webkit-flex: 0 0 100%;
            -moz-box-flex: 0;
            -ms-flex: 0 0 100%;
            flex: 0 0 100%;
            -webkit-box-align: center;
            -webkit-align-items: center;
            -moz-box-align: center;
            -ms-flex-align: center;
            align-items: center; }
        .footer-awarad p {
            color: #fff;
            font-size: 24px;
            font-weight: 700;
            margin-left: 20px;
            padding-top: 15px; }

        .footer-info-text {
            margin: 26px 0 32px; }

        .footer-left-widget {
            padding-left: 80px; }

        .footer-widget .section-heading {
            margin-bottom: 35px; }

        .footer-widget h3 {
            font-size: 24px;
            color: #fff;
            position: relative;
            margin-bottom: 15px;
            max-width: fit-content; }

        .footer-widget ul {
            width: 50%;
            float: left;
            list-style: none;
            margin: 0;
            padding: 0; }

        .footer-widget li {
            margin-bottom: 18px; }

        .footer-widget p {
            margin-bottom: 27px; }

        .footer-widget a {
            color: #878787;
            -webkit-transition: all 0.3s;
            -o-transition: all 0.3s;
            transition: all 0.3s; }
        .footer-widget a:hover {
            color: #007bff; }

        .footer-widget:after {
            content: "";
            display: block;
            clear: both; }

        .dk-footer-form {
            position: relative; }
        .dk-footer-form input[type=email] {
            padding: 14px 28px;
            border-radius: 50px;
            background: #2E2E2E;
            border: 1px solid #2E2E2E; }
        .dk-footer-form input::-webkit-input-placeholder, .dk-footer-form input::-moz-placeholder, .dk-footer-form input:-ms-input-placeholder, .dk-footer-form input::-ms-input-placeholder, .dk-footer-form input::-webkit-input-placeholder {
            color: #878787;
            font-size: 14px; }
        .dk-footer-form input::-webkit-input-placeholder, .dk-footer-form input::-moz-placeholder, .dk-footer-form input:-ms-input-placeholder, .dk-footer-form input::-ms-input-placeholder, .dk-footer-form input::placeholder {
            color: #878787;
            font-size: 14px; }
        .dk-footer-form button[type=submit] {
            position: absolute;
            top: 0;
            right: 0;
            padding: 12px 24px 12px 17px;
            border-top-right-radius: 25px;
            border-bottom-right-radius: 25px;
            border: 1px solid #007bff;
            background: #007bff;
            color: #fff; }
        .dk-footer-form button:hover {
            cursor: pointer; }

        /* ==========================

            Contact

        =============================*/
        .contact-us {
            position: relative;
            z-index: 2;
            margin-top: 65px;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: center;
            -webkit-align-items: center;
            -moz-box-align: center;
            -ms-flex-align: center;
            align-items: center; }

        .contact-icon {
            position: absolute; }
        .contact-icon i {
            font-size: 36px;
            top: -5px;
            position: relative;
            color: #007bff; }

        .contact-info {
            margin-left: 75px;
            color: #fff; }
        .contact-info h3 {
            font-size: 20px;
            color: #fff;
            margin-bottom: 0; }

        .copyright {
            padding: 28px 0;
            margin-top: 55px;
            background-color: #202020; }
        .copyright span,
        .copyright a {
            color: #878787;
            -webkit-transition: all 0.3s linear;
            -o-transition: all 0.3s linear;
            transition: all 0.3s linear; }
        .copyright a:hover {
            color:#007bff; }

        .copyright-menu ul {
            text-align: right;
            margin: 0; }

        .copyright-menu li {
            display: inline-block;
            padding-left: 20px; }

        .back-to-top {
            position: relative;
            z-index: 2; }
        .back-to-top .btn-dark {
            width: 35px;
            height: 35px;
            border-radius: 50%;
            padding: 0;
            position: fixed;
            bottom: 20px;
            right: 20px;
            background: #2e2e2e;
            border-color: #2e2e2e;
            display: none;
            z-index: 999;
            -webkit-transition: all 0.3s linear;
            -o-transition: all 0.3s linear;
            transition: all 0.3s linear; }
        .back-to-top .btn-dark:hover {
            cursor: pointer;
            background: #FA6742;
            border-color: #FA6742; }
        <!-- -->
        body{
            background:#192226 !important;
        }

        .navbar-inverse{
            background:#222B31 !important;
            border-bottom:4px solid #EE445F !important;
        }

        .navbar-brand{
            font:12px Lato !important;
            text-transform:uppercase;
            color:#FFF !important;
            letter-spacing:2px;
            margin-top:2px;
        }

        a{
            font:500 11px Lato;
            letter-spacing:2px;
            padding:16px !important;
            color:#a3bfc6 !important;
            text-transform:uppercase;
            position:relative;
            z-index:1000;
        }
        a:hover{
            color:#FFF !important;
        }
        li{
            position:relative;
        }


        .navbar-inverse .navbar-toggle{
            border:none;
        }

        .navbar-collapse{
            box-shadow:none !important;
            border:none !important;
        }

        .navbar-inverse .navbar-toggle:hover{
            background:transparent !important;
        }

        .navbar-inverse .navbar-toggle:focus{
            background:transparent !important;
        }

        .navbar-inverse .navbar-toggle:active{
            background:transparent !important;
        }

        .icon-bar{
            background:#a3bfc6 !important;
        }

        .hover{
            display:block;
            position:absolute;
            width:0%;
            height:100%;
            top:0px;
            left:0px;
            background:#EE445F !important;
            z-index:0;
            opacity:0;
        }

        @media (max-width: 767px) {
            a{
                padding:12px !important;
            }
        }


        @media (max-width: 480px) {
            .nav{
                padding-bottom:20px;
            }
        }

        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333333;
        }

        li {
            float: left;
        }

        li a {
            display: flex;
            color: white;
            text-align: center;
            padding: 16px;
            text-decoration: none;
        }

        body {
            font-family: "Libre Baskerville", serif;
            font-weight: 400;
            font-size: 16px;
            line-height: 30px;
            background-color: #0c0f15;
            color: #ababab; }

        ::-webkit-scrollbar {
            width: 10px;
            background-color: #F5F5F5;
        }

        ::-webkit-scrollbar-thumb {
            background-color: #f90a23;
            background-image: -webkit-linear-gradient(45deg,rgba(255, 255, 255, .2) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .2) 50%, rgba(255, 255, 255, .2) 75%, transparent 75%, transparent);
        }

        ::-webkit-scrollbar-track {
            -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
            background-color: #F5F5F5;
        }

        .heading-page
        {
            text-transform: uppercase;
            font-size: 43px;
            font-weight: bolder;
            letter-spacing: 3px;
            color: white;
        }
        a {
            color: inherit;
            -webkit-transition: all 0.3s ease 0s;
            -moz-transition: all 0.3s ease 0s;
            -o-transition: all 0.3s ease 0s;
            transition: all 0.3s ease 0s; }
        a:hover, a:focus {
            color: #ababab;
            text-decoration: none;
            outline: 0 none; }

        h1, h2, h3,
        h4, h5, h6 {
            color: #1e2530;
            font-family: "Open Sans", sans-serif;
            margin: 0;
            line-height: 1.3; }

        p {
            margin-bottom: 20px; }
        p:last-child {
            margin-bottom: 0; }

        /*
         * Selection color
         */
        ::-moz-selection {
            background-color: #FA6862;
            color: #fff; }

        ::selection {
            background-color: #FA6862;
            color: #fff; }

        /*
         *  Reset bootstrap's default style
         */
        .form-control::-webkit-input-placeholder,
        ::-webkit-input-placeholder {
            opacity: 1;
            color: inherit; }

        .form-control:-moz-placeholder,
        :-moz-placeholder {
            /* Firefox 18- */
            opacity: 1;
            color: inherit; }

        .form-control::-moz-placeholder,
        ::-moz-placeholder {
            /* Firefox 19+ */
            opacity: 1;
            color: inherit; }

        .form-control:-ms-input-placeholder,
        :-ms-input-placeholder {
            opacity: 1;
            color: inherit; }

        button, input, select,
        textarea, label {
            font-weight: 400; }

        .btn {
            -webkit-transition: all 0.3s ease 0s;
            -moz-transition: all 0.3s ease 0s;
            -o-transition: all 0.3s ease 0s;
            transition: all 0.3s ease 0s; }
        .btn:hover, .btn:focus, .btn:active:focus {
            outline: 0 none; }

        .btn-primary {
            background-color: #FA6862;
            border: 0;
            font-family: "Open Sans", sans-serif;
            font-weight: 700;
            height: 48px;
            line-height: 50px;
            padding: 0 42px;
            text-transform: uppercase; }
        .btn-primary:hover, .btn-primary:focus, .btn-primary:active, .btn-primary:active:focus {
            background-color: #f9423a; }

        .btn-border {
            border: 1px solid #d7d8db;
            display: inline-block;
            padding: 7px; }

        /*
         *  CSS Helper Class
         */
        .clear:before, .clear:after {
            content: " ";
            display: table; }

        .clear:after {
            clear: both; }

        .pt-table {
            display: table;
            width: 100%;
            height: -webkit-calc(100vh - 4px);
            height: -moz-calc(100vh - 4px);
            height: calc(100vh - 4px); }

        .pt-tablecell {
            display: table-cell;
            vertical-align: middle; }

        .overlay {
            position: absolute;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%; }

        .relative {
            position: relative; }

        .primary,
        .link:hover {
            color: #FA6862; }

        .no-gutter {
            margin-left: 0;
            margin-right: 0; }
        .no-gutter > [class^="col-"] {
            padding-left: 0;
            padding-right: 0; }

        .flex {
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-flex;
            display: -ms-flexbox;
            display: flex; }

        .flex-middle {
            -webkit-box-align: center;
            -ms-flex-align: center;
            -webkit-align-items: center;
            -moz-align-items: center;
            align-items: center; }

        .space-between {
            -webkit-box-pack: justify;
            -ms-flex-pack: justify;
            -webkit-justify-content: space-between;
            -moz-justify-content: space-between;
            justify-content: space-between; }

        .nicescroll-cursors {
            background: #FA6862 !important; }

        .preloader {
            bottom: 0;
            left: 0;
            position: fixed;
            right: 0;
            top: 0;
            z-index: 1000;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-flex;
            display: -ms-flexbox;
            display: flex; }
        .preloader.active.hidden {
            display: none; }

        .loading-mask {
            background-color: #FA6862;
            height: 100%;
            left: 0;
            position: absolute;
            top: 0;
            width: 20%;
            -webkit-transition: all 0.6s cubic-bezier(0.61, 0, 0.6, 1) 0s;
            -moz-transition: all 0.6s cubic-bezier(0.61, 0, 0.6, 1) 0s;
            -o-transition: all 0.6s cubic-bezier(0.61, 0, 0.6, 1) 0s;
            transition: all 0.6s cubic-bezier(0.61, 0, 0.6, 1) 0s; }
        .loading-mask:nth-child(2) {
            left: 20%;
            -webkit-transition-delay: 0.1s;
            -moz-transition-delay: 0.1s;
            -o-transition-delay: 0.1s;
            transition-delay: 0.1s; }
        .loading-mask:nth-child(3) {
            left: 40%;
            -webkit-transition-delay: 0.2s;
            -moz-transition-delay: 0.2s;
            -o-transition-delay: 0.2s;
            transition-delay: 0.2s; }
        .loading-mask:nth-child(4) {
            left: 60%;
            -webkit-transition-delay: 0.3s;
            -moz-transition-delay: 0.3s;
            -o-transition-delay: 0.3s;
            transition-delay: 0.3s; }
        .loading-mask:nth-child(5) {
            left: 80%;
            -webkit-transition-delay: 0.4s;
            -moz-transition-delay: 0.4s;
            -o-transition-delay: 0.4s;
            transition-delay: 0.4s; }

        .preloader.active.done {
            z-index: 0; }

        .preloader.active .loading-mask {
            width: 0; }

        /*------------------------------------------------
            Start Styling
        -------------------------------------------------*/
        .mt20{margin-top:20px;}
        .site-wrapper {
            border-top: 4px solid #ff0037; }

        .page-close {
            font-size: 30px;
            position: absolute;
            right: 30px;
            top: 30px;
            z-index: 100; }

        .page-title {
            margin-bottom: 75px; }
        .page-title img {
            margin-bottom: 20px; }
        .page-title h2 {
            font-size: 68px;
            margin-bottom: 25px;
            position: relative;
            z-index: 0;
            font-weight: 900;
            text-transform: uppercase; }
        .page-title p {
            font-size: 16px; }
        .page-title .title-bg {
            color: rgba(30, 37, 48, 0.07);
            font-size: 158px;
            left: 0;
            letter-spacing: 10px;
            line-height: 0.7;
            position: absolute;
            right: 0;
            top: 50%;
            z-index: -1;
            -webkit-transform: translateY(-50%);
            -moz-transform: translateY(-50%);
            -ms-transform: translateY(-50%);
            -o-transform: translateY(-50%);
            transform: translateY(-50%); }

        .section-title {
            margin-bottom: 20px; }
        .section-title h3 {
            display: inline-block;
            position: relative; }
        .section-title h3::before, .section-title h3::after {
            content: "";
            height: 2px;
            position: absolute;
            bottom: 8px;
            left: -webkit-calc(100% + 14px);
            left: -moz-calc(100% + 14px);
            left: calc(100% + 14px); }
        .section-title h3::before {
            background-color: #1e2530;
            width: 96px;
            bottom: 14px; }
        .section-title h3::after {
            background-color: #FA6862;
            width: 73px; }
        .section-title.light h3 {
            color: #fff; }
        .section-title.light h3::before {
            background-color: #fff; }

        .page-nav {
            bottom: 40px;
            left: 0;
            position: absolute;
            right: 0; }
        .page-nav span {
            font-family: "Open Sans", sans-serif;
            font-size: 14px;
            font-weight: 500;
            line-height: 0.9;
            text-transform: uppercase; }

        /*------------------------------------------------
            Home Page
        -------------------------------------------------*/

        .hexagon-item:first-child {
            margin-left: 0;
        }

        .page-home {
            background-position: center center;
            background-repeat: no-repeat;
            background-size: cover;
            vertical-align: middle; }
        .page-home .overlay {
            background-color: rgba(14, 17, 24, 0.97);
        }

        /* End of container */
        .hexagon-item {
            cursor: pointer;
            width: 200px;
            height: 173.20508px;
            float: left;
            margin-left: -29px;
            z-index: 0;
            position: relative;
            -webkit-transform: rotate(30deg);
            -moz-transform: rotate(30deg);
            -ms-transform: rotate(30deg);
            -o-transform: rotate(30deg);
            transform: rotate(30deg); }
        .hexagon-item:first-child {
            margin-left: 0; }
        .hexagon-item:hover {
            z-index: 1; }
        .hexagon-item:hover .hex-item:last-child {
            opacity: 1;
            -webkit-transform: scale(1.3);
            -moz-transform: scale(1.3);
            -ms-transform: scale(1.3);
            -o-transform: scale(1.3);
            transform: scale(1.3); }
        .hexagon-item:hover .hex-item:first-child {
            opacity: 1;
            -webkit-transform: scale(1.2);
            -moz-transform: scale(1.2);
            -ms-transform: scale(1.2);
            -o-transform: scale(1.2);
            transform: scale(1.2); }
        .hexagon-item:hover .hex-item:first-child div:before,
        .hexagon-item:hover .hex-item:first-child div:after {
            height: 5px; }
        .hexagon-item:hover .hex-item div::before,
        .hexagon-item:hover .hex-item div::after {
            background-color: #ff0037; }
        .hexagon-item:hover .hex-content svg {
            -webkit-transform: scale(0.97);
            -moz-transform: scale(0.97);
            -ms-transform: scale(0.97);
            -o-transform: scale(0.97);
            transform: scale(0.97); }

        .page-home .hexagon-item:nth-last-child(1),
        .page-home .hexagon-item:nth-last-child(2),
        .page-home .hexagon-item:nth-last-child(3) {
            -webkit-transform: rotate(30deg) translate(87px, -80px);
            -moz-transform: rotate(30deg) translate(87px, -80px);
            -ms-transform: rotate(30deg) translate(87px, -80px);
            -o-transform: rotate(30deg) translate(87px, -80px);
            transform: rotate(30deg) translate(87px, -80px); }

        .hex-item {
            position: absolute;
            top: 0;
            left: 50px;
            width: 100px;
            height: 173.20508px; }
        .hex-item:first-child {
            z-index: 0;
            -webkit-transform: scale(0.9);
            -moz-transform: scale(0.9);
            -ms-transform: scale(0.9);
            -o-transform: scale(0.9);
            transform: scale(0.9);
            -webkit-transition: all 0.3s cubic-bezier(0.165, 0.84, 0.44, 1);
            -moz-transition: all 0.3s cubic-bezier(0.165, 0.84, 0.44, 1);
            -o-transition: all 0.3s cubic-bezier(0.165, 0.84, 0.44, 1);
            transition: all 0.3s cubic-bezier(0.165, 0.84, 0.44, 1); }
        .hex-item:last-child {
            transition: all 0.3s cubic-bezier(0.19, 1, 0.22, 1);
            z-index: 1; }
        .hex-item div {
            box-sizing: border-box;
            position: absolute;
            top: 0;
            width: 100px;
            height: 173.20508px;
            -webkit-transform-origin: center center;
            -moz-transform-origin: center center;
            -ms-transform-origin: center center;
            -o-transform-origin: center center;
            transform-origin: center center; }
        .hex-item div::before, .hex-item div::after {
            background-color: #1e2530;
            content: "";
            position: absolute;
            width: 100%;
            height: 3px;
            -webkit-transition: all 0.3s cubic-bezier(0.165, 0.84, 0.44, 1) 0s;
            -moz-transition: all 0.3s cubic-bezier(0.165, 0.84, 0.44, 1) 0s;
            -o-transition: all 0.3s cubic-bezier(0.165, 0.84, 0.44, 1) 0s;
            transition: all 0.3s cubic-bezier(0.165, 0.84, 0.44, 1) 0s; }
        .hex-item div:before {
            top: 0; }
        .hex-item div:after {
            bottom: 0; }
        .hex-item div:nth-child(1) {
            -webkit-transform: rotate(0deg);
            -moz-transform: rotate(0deg);
            -ms-transform: rotate(0deg);
            -o-transform: rotate(0deg);
            transform: rotate(0deg); }
        .hex-item div:nth-child(2) {
            -webkit-transform: rotate(60deg);
            -moz-transform: rotate(60deg);
            -ms-transform: rotate(60deg);
            -o-transform: rotate(60deg);
            transform: rotate(60deg); }
        .hex-item div:nth-child(3) {
            -webkit-transform: rotate(120deg);
            -moz-transform: rotate(120deg);
            -ms-transform: rotate(120deg);
            -o-transform: rotate(120deg);
            transform: rotate(120deg); }

        .hex-content {
            color: #fff;
            display: block;
            height: 180px;
            margin: 0 auto;
            position: relative;
            text-align: center;
            transform: rotate(-30deg);
            width: 156px; }
        .hex-content .hex-content-inner {
            left: 50%;
            margin: -3px 0 0 2px;
            position: absolute;
            top: 50%;
            -webkit-transform: translate(-50%, -50%);
            -moz-transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            -o-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%); }
        .hex-content .icon {
            display: block;
            font-size: 36px;
            line-height: 30px;
            margin-bottom: 11px; }
        .hex-content .title {
            display: block;
            font-family: "Open Sans", sans-serif;
            font-size: 14px;
            letter-spacing: 1px;
            line-height: 24px;
            text-transform: uppercase; }
        .hex-content svg {
            left: -7px;
            position: absolute;
            top: -13px;
            transform: scale(0.87);
            z-index: -1;
            -webkit-transition: all 0.3s cubic-bezier(0.165, 0.84, 0.44, 1) 0s;
            -moz-transition: all 0.3s cubic-bezier(0.165, 0.84, 0.44, 1) 0s;
            -o-transition: all 0.3s cubic-bezier(0.165, 0.84, 0.44, 1) 0s;
            transition: all 0.3s cubic-bezier(0.165, 0.84, 0.44, 1) 0s; }
        .hex-content:hover {
            color: #fff; }

        .page-home .hexagon-item:nth-last-child(1), .page-home .hexagon-item:nth-last-child(2), .page-home .hexagon-item:nth-last-child(3) {
            -webkit-transform: rotate(30deg) translate(87px, -80px);
            -moz-transform: rotate(30deg) translate(87px, -80px);
            -ms-transform: rotate(30deg) translate(87px, -80px);
            -o-transform: rotate(30deg) translate(87px, -80px);
            transform: rotate(30deg) translate(87px, -80px);
        }
        /*------------------------------------------------
            Welcome Page
        -------------------------------------------------*/
        .author-image-large {
            position: absolute;
            right: 0;
            top: 0; }
        .author-image-large img {
            height: -webkit-calc(100vh - 4px);
            height: -moz-calc(100vh - 4px);
            height: calc(100vh - 4px); }


        @media (min-width: 1200px)
        {
            .col-lg-offset-2 {
                margin-left: 16.66666667%;
            }
        }

        @media (min-width: 1200px)
        {
            .col-lg-8 {
                width: 66.66666667%;
            }
        }

        .hexagon-item:first-child {
            margin-left: 0;
        }

        .pt-table.desktop-768 .pt-tablecell {
            padding-bottom: 110px;
            padding-top: 60px;
        }



        .hexagon-item:hover .icon i
        {
            color:#ff0037;
            transition:0.6s;

        }


        .hexagon-item:hover .title
        {
            -webkit-animation: focus-in-contract 0.5s cubic-bezier(0.250, 0.460, 0.450, 0.940) both;
            animation: focus-in-contract 0.5s cubic-bezier(0.250, 0.460, 0.450, 0.940) both;
        }
        /***************************/

        @-webkit-keyframes focus-in-contract {
            0% {
                letter-spacing: 1em;
                -webkit-filter: blur(12px);
                filter: blur(12px);
                opacity: 0;
            }
            100% {
                -webkit-filter: blur(0px);
                filter: blur(0px);
                opacity: 1;
            }
        }
        @keyframes focus-in-contract {
            0% {
                letter-spacing: 1em;
                -webkit-filter: blur(12px);
                filter: blur(12px);
                opacity: 0;
            }
            100% {
                -webkit-filter: blur(0px);
                filter: blur(0px);
                opacity: 1;
            }
        }
        @media only screen and (max-width: 767px)
        {
            .hexagon-item {
                float: none;
                margin: 0 auto 50px;
            }
            .hexagon-item:first-child {
                margin-left: auto;
            }

            .page-home .hexagon-item:nth-last-child(1), .page-home .hexagon-item:nth-last-child(2), .page-home .hexagon-item:nth-last-child(3) {
                -webkit-transform: rotate(30deg) translate(0px, 0px);
                -moz-transform: rotate(30deg) translate(0px, 0px);
                -ms-transform: rotate(30deg) translate(0px, 0px);
                -o-transform: rotate(30deg) translate(0px, 0px);
                transform: rotate(30deg) translate(0px, 0px);
            }
        }

        code {
            background: #fff;
            padding: 0.2rem;
            border-radius: 0.2rem;
            margin: 0 0.3rem;
        }
        .all_div_header{
            background-color: black;
        }
        .li_header{
            font-size: 20px;
        }
        .li_header:hover{
            color: #EE445F;
            background: #EE445F;
            margin-bottom: 0px;
        }
        .span_a{
            font-size: 18px;
            color: white;
        }
        .block_admin{
            margin-left: -300px;
            margin-top: 5%;
            margin-bottom: 5%;
            padding: 5%;
            display: flex;
            height: 100%;
            width: 110%;
        }
        .block_admin_div{
            border: 2px solid #EE445F;
            width: 800px;
            margin: 3%;
        }
        .block_admine{
            margin-left: 5%;
            margin-top: 5%;
            margin-bottom: 5%;
            padding: 5%;
            display: block;
            text-align: center;
            height: 100%;
            width: 160%;
        }
        .block_admin_dive{
            border: 2px solid #EE445F;
            width: 800px;
            margin: 3%;
        }
        .button_admin{
            font-size: 15px;
        }
        .button_admin:hover{
            background: #EE445F;
        }
        .input_values{
            font-size: 15px;
        }
        .main_div_students{
            text-align: center;
            padding: 2%;
            margin-top: 10%;
            margin-bottom: 30%;
        }
        .register_form_students{
            font-size: 15px;
            padding: 2%;
        }
        .la{
            color: white;
            font-size: 15px;
        }
        .div_result{
            margin-top: 10%;
            margin-bottom: 30%;
            color: white;
        }
        .block_div_result{
            color: white;
            text-align: center;
            border-bottom: 3px solid #EE445F;
            padding: 15%;
            font-size: 20px;
        }
        .block_div_result_main{
            color: white;
            text-align: center;
            padding: 15%;
            border-bottom: 3px solid #EE445F;
            font-size: 20px;
        }
        .all_result{
            text-align: center;
            margin-left: 35%;
        }
        .block_div_result:hover{
            background: #EE445F;
        }
        .input_a{
            font-size: 15px;
        }
        body {
            background-color: #d1f3e7;
        }

        #title-Tag-Line {
            font-size: 20px;
        }
        /* .card-item__bg{
          width: 150px;
          margin-left: auto;
          margin-right: auto;
          left: 0;
          right: 0;
          display: block;
          position: relative;
          margin: 30px auto;
          transform: translate(0px, 50px);
          z-index: 5;
        } */

        /* form animation starts */
        .form {
            background: #fff;
            box-shadow: 0 30px 60px 0 rgba(90, 116, 148, 0.4);
            border-radius: 5px;
            max-width: 480px;
            margin-left: auto;
            margin-right: auto;
            padding-top: 5px;
            padding-bottom: 5px;
            left: 0;
            right: 0;
            position: absolute;
            border-top: 5px solid #0e3721;
            /*   z-index: 1; */
            animation: bounce 1.5s infinite;
        }
        ::-webkit-input-placeholder {
            font-size: 1.3em;
        }

        .title{
            display: block;
            font-family: sans-serif;
            margin: 10px auto 5px;
            width: 300px;
        }
        .termsConditions{
            margin: 0 auto 5px 80px;
        }

        .pageTitle{
            font-size: 2em;
            font-weight: bold;
        }
        .secondaryTitle{
            color: grey;
        }

        .name {
            background-color: #ebebeb;
            color: white;
        }
        .name:hover {
            border-bottom: 5px solid #0e3721;
            height: 30px;
            width: 380px;
            transition: ease 0.5s;
        }

        .email {
            background-color: #ebebeb;
            height: 2em;
        }

        .email:hover {
            border-bottom: 5px solid #0e3721;
            height: 30px;
            width: 380px;
            transition: ease 0.5s;
        }

        .message {
            background-color: #ebebeb;
            overflow: hidden;
            height: 10rem;
        }

        .message:hover {
            border-bottom: 5px solid #0e3721;
            height: 12em;
            width: 380px;
            transition: ease 0.5s;
        }

        .formEntry {
            display: block;
            margin: 30px auto;
            min-width: 300px;
            padding: 10px;
            border-radius: 2px;
            border: none;
            transition: all 0.5s ease 0s;
        }

        .submit {
            width: 200px;
            color: white;
            background-color: #0e3721;
            font-size: 20px;
        }

        .submit:hover {
            box-shadow: 15px 15px 15px 5px rgba(78, 72, 77, 0.219);
            transform: translateY(-3px);
            width: 300px;
            border-top: 5px solid #0e3750;
            border-radius: 0%;
        }

        @keyframes bounce {
            0% {
                tranform: translate(0, 4px);
            }
            50% {
                transform: translate(0, 8px);
            }
        }
        body {
            background-color:#1d1d1d !important;
            font-family: "Asap", sans-serif;
            color:#989898;
            margin:10px;
            font-size:16px;
        }

        #demo {
            height:100%;
            position:relative;
            overflow:hidden;
        }


        .green{
            background-color:#6fb936;
        }
        .thumb{
            margin-bottom: 30px;
        }

        .page-top{
            margin-top:85px;
        }


        img.zoom {
            width: 100%;
            height: 200px;
            border-radius:5px;
            object-fit:cover;
            -webkit-transition: all .3s ease-in-out;
            -moz-transition: all .3s ease-in-out;
            -o-transition: all .3s ease-in-out;
            -ms-transition: all .3s ease-in-out;
        }


        .transition {
            -webkit-transform: scale(1.2);
            -moz-transform: scale(1.2);
            -o-transform: scale(1.2);
            transform: scale(1.2);
        }
        .modal-header {

            border-bottom: none;
        }
        .modal-title {
            color:#000;
        }
        .modal-footer{
            display:none;
        }

    </style>
