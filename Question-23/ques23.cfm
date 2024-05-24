<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Employment Application</title>
        <link rel="stylesheet" href="./Assets/css/style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script src="./Script/ques23.js"></script>

    </head>
    <body>
        <div class="mainBody">
            <div class="mainConts">
                <div class="logo">
                    <img src="./Assets/wufooImage.PNG" alt="img">
                </div>
                
                <div class="secondMain">
                    <form action="Component.ques23.cfc?method=formUpload" method="post">
                    <div class="secondMainFt">
                        <div class="head">
                            <h2>Employment Application</h2>
                            <p>Infinity Box Inc.</p>
                        </div>
                    </div>
                    <div class="position">
                        <p class="positionTxt">Which position are you applying for?</p>
                        <span class="redIcon">*</span>
                    </div>
                    <div class="selectSet">
                        <select class="selectConts">
                            <option value="" selected="selected"></option>
                            <option value="Interface Designer">Interface Designer</option>
                            <option value="Software Engineer">Software Engineer</option>
                            <option value="System Administrator">System Administrator </option>
                            <option value="Office Manager">Office Manager </option>
                        </select>
                    </div>
                    <div class="relocate">
                        <p class="relocateTxt">Are you willing to relocate? </p>
                        <span class="redIcon">*</span>         
                    </div>
                    <div class="radioBtnCont">
                        <div class="btnOne">
                            <div class="rdBtn">
                                <input type="radio" name="yes"><span>Yes</span>
                            </div>
                            <div class="rdBtn">
                                <input type="radio" name="no"><span>No</span>
                            </div>
                        </div>
                    </div>
                    <div class="relocate">
                        <p class="relocateTxt">When can you start?</p>
                        <span class="redIcon">*</span>         
                    </div>
                    <div class="inputSet">
                        <div class="inputConts">
                            <div class="box">
                                <input type="text" class="textBox">
                                <p class="month">MM</p>
                            </div>
                            <div class="symbols">
                                <p class="symbol">/</p>
                            </div>
                        </div>
                        <div class="inputConts">
                            <div class="box">
                                <input type="text" class="textBox">
                                <p class="month">DD</p>
                            </div>
                            <div class="symbols">
                                <p class="symbol">/</p>
                            </div>
                        </div>
                        <div class="inputContss">
                            <div class="box">
                                <input type="text" class="textBoxSd">
                                <p class="month">YYYY</p>
                            </div>
                            <div class="dateImg">
                                <img src="./Assets/datePicker.png" alt="img">
                            </div>
                        </div>
                    </div>
                    <div class="portflio">
                        <p class="relocateTxt">Portfolio Web Site</p>
                        <form class="httpTxt">
                            <input type="text" value="http: / /" class="insideConts">
                        </form>
                    </div>
                    <div class="attach">
                        <p class="relocateTxt">Attach a Copy of Your Resume</p>
                    </div>
                    <div class="chooseBtn">
                        <button>Choose File</button>  <span>No File Chosen</span>
                        <p>Word or PDF Documents Only</p>
                    </div>
                    <div class="salary">
                        <p class="relocateTxt">Salary Requirements</p>
                        <div class="symbolBox">
                            <span class="symbolSd">$</span>
                            <div class="inputConts">
                                <div class="box">
                                    <input type="text" class="textBoxThd">
                                    <p class="month">Dollars</p>
                                </div>
                                <div class="symbols">
                                    <p class="symbol">.</p>
                                </div>
                            </div>
                            <div class="inputConts">
                                <div class="box">
                                    <input type="text" class="textBox">
                                    <p class="month">Cents</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="contact">
                        <p>Your Contact Information</p>
                    </div>
                    <div class="portflio">
                        <p class="relocateTxt">Name</p>
                        <span class="redIcon">*</span> 
                    </div>
                    <div class="firstLast">
                        <div class="inputConts">
                            <div class="boxx">
                                <input type="text" class="textBoxFourth">
                                <p class="month">First</p>
                            </div>
                        </div>
                        <div class="inputConts">
                            <div class="boxx">
                                <input type="text" class="textBoxFifth">
                                <p class="month">Last</p>
                            </div>
                        </div>
                    </div>
                    <div class="portflio">
                        <p class="relocateTxt">Email Address</p>
                        <span class="redIcon">*</span>
                    </div>
                    <div class="boxx">
                        <input type="text" class="textBoxSixth">
                    </div>
                    <div class="portflio">
                        <p class="relocateTxt">Phone</p>
                        <span class="redIcon">*</span>
                    </div>
                    <div class="inputSet">
                        <div class="inputConts">
                            <div class="box">
                                <input type="text" class="textBoxz">
                                <p class="month">###</p>
                            </div>
                            <div class="symbols">
                                <p class="symbol">-</p>
                            </div>
                        </div>
                        <div class="inputConts">
                            <div class="box">
                                <input type="text" class="textBoxz">
                                <p class="month">###</p>
                            </div>
                            <div class="symbols">
                                <p class="symbol">-</p>
                            </div>
                        </div>
                        <div class="inputContss">
                            <div class="box">
                                <input type="text" class="textBoxTd">
                                <p class="month">####</p>
                            </div>
                        </div>
                    </form>
                    </div>
                    <div class="submitBtn">
                        <button class="sub" onclick="validateForm()">Submit</button>
                    </div>
                    <div class="lastCont">
                        <p class="lastContTxt">This site is protected by reCAPTCHA Enterprise and the Google
                        <a href="#"> Privacy Policy   </a>   and <a href="#"> Terms of Service</a> apply</p>
                    </div>
                
                </div>
            </div>
        </div>
    </body>
</html>