<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Employment Application</title>
        <link rel="stylesheet" href="./Assets/css/style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script src="./Script/ques23.js"></script>
        <script src="./Script/script.js"></script>
    </head>
    <body>
        <div class="mainBody">
            <div class="mainConts">
                <div class="logo">
                    <img src="./Assets/wufooImage.PNG" alt="img">
                </div>
                <div class="secondMain" id="formContainer">
                    <form action="Component/ques23.cfc?method=formUpload" method="post">
                    <div class="secondMainFt">
                        <div class="head">
                            <h2>Employment Application</h2>
                            <p>Infinity Box Inc.</p>
                        </div>
                    </div>
                    <div class="errorTxt" id="msgError">
                        <p>There was a problem with your submission.</p>
                        <span>Errors have been <b class="highlighted">highlighted</b> below</span>
                    </div>
                    <div class="errorContainer">
                        <div class="boxFirst" id="boxx">
                            <div class="position" >
                                <p class="positionTxt" id="positionTxtt">Which position are you applying for?</p>
                                <span class="redIcon">*</span>
                            </div>
                            <div class="selectSet">
                                <select id="selectConts">
                                    <option value="" selected="selected"></option>
                                    <option value="Interface Designer">Interface Designer</option>
                                    <option value="Software Engineer">Software Engineer</option>
                                    <option value="System Administrator">System Administrator </option>
                                    <option value="Office Manager">Office Manager </option>
                                </select>
                            </div>
                            <span id="fieldError" class="error"></span>
                        </div>
                    </div>
                    <div id="relocateCont" class="relocates">
                            <div class="relocate">
                                <p class="relocateTxtCont">Are you willing to relocate? </p>
                                <span class="redIcon">*</span>         
                            </div>
                            <div class="radioBtnCont" id="radioContainer">
                                <div class="btnOne">
                                    <div class="rdBtn">
                                        <input type="radio" name="relocate" id="firstButton" value="yes"><span>Yes</span>
                                    </div>
                                    <div class="rdBtn">
                                        <input type="radio" name="relocate" id="secondButon" value="no"><span>No</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="errorContainerSd">
                            <div class="boxSecond" id="boxxSecond">
                                <div class="relocate">
                                    <p class="relocateTxt">When can you start?</p>
                                    <span class="redIcon">*</span>         
                                </div>
                                <div class="inputSet">
                                    <div class="inputConts">
                                        <div class="box">
                                            <input type="text" id="textBoxFt" maxlength="2">
                                            <p class="month">MM</p>
                                        </div>
                                        <div class="symbols">
                                            <p class="symbol">/</p>
                                        </div>
                                    </div>
                                    <div class="inputConts">
                                        <div class="box">
                                            <input type="text" id="textBoxSnd" maxlength="2">
                                            <p class="month">DD</p>
                                        </div>
                                        <div class="symbols">
                                            <p class="symbol">/</p>
                                        </div>
                                    </div>
                                    <div class="inputContss">
                                        <div class="box">
                                            <input type="text" id="textBoxThd" maxlength="4">
                                            <p class="month">YYYY</p>
                                        </div>
                                        <div class="dateImg">
                                            <img src="./Assets/datePicker.png" alt="img">
                                        </div>
                                    </div>
                                </div>
                                <span id="monthError" class="error"></span>
                            </div>
                        </div>
                        <div class="errorContainerThd" id="thdBox">
                            <div class="boxThird" id="boxxThird">
                            
                                <div class="portflio">
                                    <p class="relocateTxt">Portfolio Web Site</p>
                                    <div class="httpTxt">
                                        <input type="text" value="http: / /" id="urlCont">
                                    </div>
                                </div>
                            
                                <span id="urlError" class="error"></span>
                            </div>
                        </div>

                        <div id="fileCont" class="fileConts">
                            <div class="attach">
                                <p class="attachTxt">Attach a Copy of Your Resume</p>
                            </div>
                            <div class="chooseBtn" id="chooseImg">
                                <input type="file" id="myFile">
                                <p>Word or PDF Documents Only</p>
                            </div>
                        </div>
                        <div class="salary" id="salaryCont">
                            <p class="salaryTxt">Salary Requirements</p>
                            <div class="symbolBox">
                                <span class="symbolSd">$</span>
                                <div class="inputConts">
                                    <div class="box">
                                        <input type="text" class="textBoxThd" id="salaryBox">
                                        <p class="month">Dollars</p>
                                    </div>
                                    <div class="symbols">
                                        <p class="symbol">.</p>
                                    </div>
                                </div>
                                <div class="inputConts">
                                    <div class="box">
                                        <input type="text" class="textBox" id="salaryBox">
                                        <p class="month">Cents</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="contact">
                            <p>Your Contact Information</p>
                        </div>
                        <div class="errorContainerForth">
                            <div class="boxForth" id="boxxFourth">
                                <div class="portflioName">
                                    <p class="relocateTxt">Name</p>
                                    <span class="redIcon">*</span> 
                                </div>
                                <div class="firstLast">
                                    <div class="inputConts">
                                        <div class="boxx">
                                            <input type="text" id="firstname">
                                            <label for="firstName">First</label>
                                        
                                        </div>
                                    </div>
                                    <div class="inputConts">
                                        <div class="boxx">
                                            <input type="text" id="lastname">
                                            <label for="lastName">Last</label>
                                        
                                        </div>
                                    </div>
                                </div>
                                <span id="nameError" class="error"></span><br>
                            </div>
                        </div>
                        <div class="errorContainerFifth">
                            <div class="boxFifth" id="boxxFifth">
                                <div class="portflioEmail">
                                    <p class="email">Email Address</p>
                                    <span class="redIcon">*</span>
                                </div>
                                <div class="boxx">
                                    <input type="email" id="email">
                                </div>
                                <span id="emailError" class="error"></span><br>
                            </div>
                        </div>    
                        <div class="errorContainerSixth">
                            <div class="boxSixth" id="boxSix">
                                <div class="portflioPhone">
                                    <p class="relocateTxt">Phone</p>
                                    <span class="redIcon">*</span>
                                </div>
                                <div class="inputSet">
                                    <div class="inputConts">
                                        <div class="box">
                                            <input type="text" id="phoneFt" maxlength="3" onkeypress="return (event.charCode >47 && event.charCode < 59)">
                                            <label for="phoTxt">###</label>
                                        </div>
                                        <div class="symbols">
                                            <p class="symbol">-</p>
                                        </div>
                                    </div>
                                    <div class="inputConts">
                                        <div class="box">
                                            <input type="text" id="phoneSnd" maxlength="3" onkeypress="return (event.charCode >47 && event.charCode < 59)">
                                            <label for="phoTxt">###</label>
                                        </div>
                                        <div class="symbols">
                                            <p class="symbol">-</p>
                                        </div>
                                    </div>
                                    <div class="inputContss">
                                        <div class="box">
                                            <input type="text" id="phoneThd" maxlength="4" onkeypress="return (event.charCode >47 && event.charCode < 59)">
                                            <label for="phoTxt">####</label>
                                        </div>
                                    </div>
                                </div>
                                <span id="mobileError" class="error"></span><br>
                            </div>
                        </div>
                    </form>
                        
                        <div >
                            <button type="button" class="submit" id="submitBtn">Submit</button>
                        </div>
                        <p id="formDetails"></p>
                        <div class="lastCont">
                            <p class="lastContTxt">This site is protected by reCAPTCHA Enterprise and the Google
                            <a href="#"> Privacy Policy   </a>   and <a href="#"> Terms of Service</a> apply</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>