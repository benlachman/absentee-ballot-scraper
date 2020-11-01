<!DOCTYPE html>



<html lang="en">
<head id="Head1"><title>
	Absentee Lookup - Athens  
</title><link rel="stylesheet" href="Mobile.css?_=Version9-2-20" /><link rel="stylesheet" href="./js/jquery.css" /><link rel="stylesheet" href="TGSIstyles.css?_=Version9-2-20" /><link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet" /><meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style type="text/css">
        tr:nth-of-type(odd) {
            background: white;
        }

        tr:nth-child(4n+2) {
            background: #C5CAE9;
        }

        tr:nth-child(4n+1) {
            background: #C5CAE9;
        }

        @media only screen and (max-width: 760px), (min-device-width: 768px) and (max-device-width: 1024px) {
            td:nth-of-type(1):before {
                content: "";
            }

            td:nth-of-type(2):before {
                content: "Address";
            }

            td:nth-of-type(3):before {
                content: "App Processed";
            }

            td:nth-of-type(4):before {
                content: "App Type";
            }

            td:nth-of-type(5):before {
                content: "Processed";
            }

            td:nth-of-type(6):before {
                content: "Received";
            }

            td:nth-of-type(7):before {
                content: "";
            }

            td:nth-of-type(8):before {
                content: "";
            }

            td:nth-of-type(9):before {
                content: "";
            }

            td:nth-of-type(10):before {
                content: "";
            }
        }

        #div_warning {
            background: #b71c1c;
            color: white !important;
            display: inline-block;
            font-weight: 500;
            font-size: large;
            padding: 5px;
            border: 4px solid #FB8C00;
        }
    </style>
    <script src="./js/jquery.js" type="text/javascript"></script>
    <script src="./js/jquery-ui.js" type="text/javascript"></script>
    <script src="./js/jquery-ui.min.js" type="text/javascript"></script>

    <script language="javascript" type="text/javascript">
        $(document).ready(function () {



        });

        function showsecure(app) {

            $(function () {


                $("#div_security").dialog({
                    modal: true,
                    closeOnEscape: true,
                    buttons: {
                        "Submit": function () {
                            //$(this).dialog("close");
                            $(this).dialog("close");
                            //__doPostBackAsync("securesearch", "");
                            //__doPostBack("securesearch", "");
                            var byear = document.getElementById("txt_byear").value;
                            var bmvid = document.getElementById("txt_bmvid").value;
                            //var app = document.getElementById("lnk_secure").getAttribute("CommandArgument")
                            //alert(app);
                            //alert(byear);
                            secureclick(byear, bmvid, app);
                            return false;
                        }
                    },
                    position: {
                        my: "center",
                        at: "center",
                        of: window,
                        within: $(".content")
                    }
                });
                return false;
            });
            return false;
        }

        function secureclick(inbyear, inbmvid, appnum) {
            var byear = document.getElementById("hid_byear");
            var bmvid = document.getElementById("hid_bmvid");
            var app = document.getElementById("hid_app");
            // alert(app);
            byear.value = inbyear;
            bmvid.value = inbmvid;
            app.value = appnum;
            $('#btn_secure').click();

        }

        function __doPostBackAsync(eventName, eventArgs) {
            //showprogress(true);

            var prm = Sys.WebForms.PageRequestManager.getInstance();
            if (!Array.contains(prm._asyncPostBackControlIDs, eventName)) {
                prm._asyncPostBackControlIDs.push(eventName);
            }
            if (!Array.contains(prm._asyncPostBackControlClientIDs, eventName)) {
                prm._asyncPostBackControlClientIDs.push(eventName);
            }
            __doPostBack(eventName, eventArgs);
            return false;
        }
    </script>

</head>
<body id="body">
    <header>
        <!DOCTYPE html>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-127176238-3"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'UA-127176238-3');
</script>

<link id="page_header_colorsCss" rel="stylesheet" href="./colors_default.css?_=Version10-16-18"></link>
    <a id="page_header_homeLink" class="homeLink" Title="Return to County Homepage" href="https://www.boe.ohio.gov/athens/"> <div aria-label="Home Icon"> </div> <p>Home</p></a>


        <h1>Check My Absentee Request</h1>
    </header>
    <div id="page-wrap" role="main">

        <div class="filedata"></div>
        <span id="span_search">
            <p>Welcome to the Absentee Search!</p>
            <p>Please enter your information below.</p>
        </span>
        <form name="frmvtlook" method="post" action="./avlookup.aspx" onsubmit="javascript:return WebForm_OnSubmit();" id="frmvtlook">
<div>
<input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" />
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['frmvtlook'];
if (!theForm) {
    theForm = document.frmvtlook;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<script src="/vtrapp/athens/WebResource.axd?d=vWw3vVWcmrA-W-DMbim4kM63c_soEUoPhM41dd8G49gOAnegSmuWAbPjRA08h9OAuXSVlRuNSxpbuPV3FbzXu5hRz2-GksDl95IQcbh_www1&amp;t=637327039249080682" type="text/javascript"></script>


<script src="/vtrapp/athens/ScriptResource.axd?d=QKdAC7WavuELM3aORacahdciOYgtY_AYK9IFkRMkRW_tRVYydqJLsA4AImigck37igDFWEymIhG6-2rv6B_Nfe8jwwyUkLKcuA6G78xKfSw3KeRfBwvGUD3ZUs6rx7WQ3h7dLgXYXSHbIJPG1E_bpGIoVq6tAcMvPU9ryHFzN3g1&amp;t=5334fc78" type="text/javascript"></script>
<script src="/vtrapp/athens/ScriptResource.axd?d=tbJVu3UiLGkdFATE7b-5QbFNwoF_7Sr9wKefX8-inALV7tPK6iLp6eiIUHno20YQmDP7s628Tl51Lra7tkEePjdT04iJb1Ohol8yUlygTuA_cJE12vmI4ECHAdPzxWO_dslhfI9zZjknepd-swxugeIDQLTTvYZkTj5CBCPpXKk72Ip_PLwSHZPc-i3RrJRU0&amp;t=2a797f5c" type="text/javascript"></script>
<script src="/vtrapp/athens/ScriptResource.axd?d=DNrFh3Bdiq8W5X5FWlnwMlH9BZOTX0dVL3YoQ6bSbaXShFr05dMlPXNhJKObYTeJcnPct6_LUhCLBLuOo-FVcosxgn77_u8JEMUPPwqKsJCLXRwukN7uqXiR9QA4odOVcW9igGLrqlzKlVE_EzFhuw4ZDstPefLfzV9t03sFTuA_0fInoEEx5Wrpm8pK1rYT0&amp;t=2a797f5c" type="text/javascript"></script>
<script src="/vtrapp/athens/WebResource.axd?d=G1UD01mF8DrKA3Z12J7MdqhVFfxKgj__TSO_QEPX0K9H2UFopxsO-MHHCHgWV7cpghgmdqFoWvydQPtA6wJmS3nPhw4dmbQCWtSHuRxASoM1&amp;t=637327039249080682" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
function WebForm_OnSubmit() {
if (typeof(ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) return false;
return true;
}
//]]>
</script>

<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="B6786635" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdACYPOYiv5LOtDGw2AW0uUtObE9h70i9EVoTudAJaI4nAbsU38svok/njcIfUuPH96XFhT7SpSpnmBSrykVe1CpMxvZPce8IgMgD8DGZsYU3UyQ7uqlt2linPpJw9+0KGHg0i1eCHO3xF/9ZRtQ2n21NxDmZiaurckE2k7VKFz5TRdlSybQcSQvqxShCApajTTkzMJ3/3Bh0/wkEfF4hbFPN4GMNfsv0m9E9FyTP08NkMoJ67kLaLlCfMFzpWjdLGg1To2plF/RqelqQhfJhzWgBKRE8nbm2rTmg1Nap9u8jnrAjs33jtmSQsviDjucJmck00vAxY2Axb9TplI1zQIVf6PA+Ae7T0bnfdj2NJoAuEa7NtJS26hN5TTCpdp4iSvVQcKVLXNT6K4/rAf30zqCuwF2YQq49ZwOTPuYOgoy12wOBhnDzmRBFg9YCI5hFSauI1pUSH9XOQKnzL30Hphi8vBsJI3vGsRTa6LvpVpSAz1w840u/rC1wqEFHHqr3vH6mVV2x+2Gely/WF+PE1hXnEoJFCJ1L1ck8SOcorHtveCuF7LoFU7FPpRFHM8gVHuLcya7c7AvNg+Velmhq5X+UE4CoXmMEgz0ulR+uCsGrI3Hzn2V6QeNvQq+sov3pTCTwfeetr3c4H3XmikgJc2ZlIldN/UJIsmA8dzIMtrzRZTnIfEZ01NXYOlywBw/AqyVp99zzyDT+vNfdDV2N9AtmEOrX+6NAB9syWNGL+ez8QjtWiZa1KaQwQ+B+918vS6Muo0ng1stisB5jephWLHXffg4d7KvwCTYU8ZNVzyhbxNwhuQN2JdgUKoxheey75VqQ+KfJNhXyEJWlmLs/wgaKf" />
</div>
            <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ScriptManager1', 'frmvtlook', [], [], [], 90, '');
//]]>
</script>

            <div id="avform">
                <p>
                    <label id="lbl_cmbelectionlist" for="cmbelectionlist">Election:</label><br />
                    <select name="cmbelectionlist" onchange="dissub();setTimeout(&#39;__doPostBack(\&#39;cmbelectionlist\&#39;,\&#39;\&#39;)&#39;, 0)" id="cmbelectionlist">
	<option value="NONE">Select an Election Date</option>
	<option selected="selected" value="20201103G">11/3/2020 General Election</option>
	<option value="20200317P">3/17/2020 Primary Election</option>
	<option value="20191105G">11/5/2019 General Election</option>
	<option value="20190507PS">5/7/2019 Primary/Special Election</option>
	<option value="20181106G">11/6/2018 General Election</option>
	<option value="20180508P">5/8/2018 Primary Election</option>
	<option value="20171107G">11/7/2017 General Election</option>
	<option value="20170502PS">5/2/2017 Primary/Special Election</option>
	<option value="20161108G">11/8/2016 General Election</option>
	<option value="20160315P">3/15/2016 Primary Election</option>
	<option value="20151103G">11/3/2015 General Election</option>
	<option value="20150505PS">5/5/2015 Primary/Special Election</option>
	<option value="20141104G">11/4/2014 General Election</option>
	<option value="20140506P">5/6/2014 Primary Election</option>
	<option value="20131105G">11/5/2013 General Election</option>
	<option value="20130507PS">5/7/2013 Primary/Special Election</option>
	<option value="20121106G">11/6/2012 General Election</option>
	<option value="20120306P">3/6/2012 Primary Election</option>
	<option value="20111108G">11/8/2011 General Election</option>
	<option value="20110503P">5/3/2011 Primary Election</option>
	<option value="20101102G">11/2/2010 General Election</option>
	<option value="20100504P">5/4/2010 Primary Election</option>
	<option value="20091103G">11/3/2009 General Election</option>
	<option value="20090505P">5/5/2009 Primary Election</option>
	<option value="20081104G">11/4/2008 General Election</option>

</select>
                    Election Absentee data last updated: 10/31/20 05:00:17 PM
                </p>


                
                <p>
                    <label id="lbl_frmLname" for="frmLname">* Last Name:</label>
                    <input name="frmLname" type="text" value="Lachman" id="frmLname" />
                    <span id="RequiredFieldValidatorlname" class="validator" style="color:Red;visibility:hidden;">*</span>
                    <span id="RegularExpressionValidator2" class="validator" style="color:Red;visibility:hidden;">*</span>
                </p>
                <p>
                    <label id="lbl_frmfname" for="frmfname">* First Name:</label>
                    <input name="frmfname" type="text" value="Catherine" id="frmfname" />
                    <span id="RequiredFieldfname" class="validator" style="color:Red;visibility:hidden;">*</span>
                    <span id="RegularExpressionValidator1" class="validator" style="color:Red;visibility:hidden;">*</span>
                </p>
                <div>
                    <input type="submit" name="btnsubmit" value="Submit" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;btnsubmit&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, false))" id="btnsubmit" />
                    <input type="submit" name="btnreset" value="Reset" onclick="reset;" id="btnreset" />
                    <div id="ValidationSummary1" style="color:Red;display:none;">

</div>
                </div>
            </div>
            
            <div id="numresults">
                <p>
                    Total Records found:1
                </p>
            </div>

            
                    <table id="tblvtrlist">
                        <caption>Search Results</caption>
                        <thead>
                            <tr>
                                <th id="Full_Name">
                                    Full Name
                                </th>
                                <th id="Absentee_Address">
                                    Absentee Address
                                </th>
                                <th id="App_Date">
                                    <span class="tooltip">App Processed
                                        <span class="tooltiptext">The date the absentee application was processed</span>
                                    </span>
                                </th>
                                <th id="App_Type">
                                    <span class="tooltip">App Type
                                        <span class="tooltiptext">The application type or status</span>
                                    </span>
                                </th>
                                <th id="Ballot_Processed">
                                    <span class="tooltip">Ballot Processed
                                        <span class="tooltiptext">The date the ballot was processed and sent out</span>
                                    </span>
                                </th>
                                <th id="Ballot_Received">
                                    <span class="tooltip">Ballot Received
                                        <span class="tooltiptext">The date the ballot was received back at the Board of Elections</span>
                                    </span>
                                </th>
                            </tr>
                            <tr>
                                <th id="Description" colspan="6"><span class="tooltip">Description
                                        <span class="tooltiptext">A short description of the absentee record's status</span>
                                </span></th>
                            </tr>
                        </thead>
                        <tbody>
                

                    <tr>

                        <td headers="Full_Name">LACHMAN, CATHERINE MARIAN<br />
                            Birth Year: 1977 
                        </td>
                        <td headers="Absentee_Address" class="oddrow">
                            101 S MAY AVE<br />ATHENS OH 45701
                        </td>
                        <td headers="App_Date">
                            08/18/2020
                            &nbsp;
                        </td>

                        <td headers="App_Type">
                            MAIL - ABSENTEE
                            &nbsp;
                        </td>
                        <td headers="Ballot_Processed">
                            10/06/2020<br />
                            MAILED
                        </td>
                        <td headers="Ballot_Received">
                            10/17/2020<br />
                            OVER THE COUNTER
                        </td>
                    </tr>
                    <tr>
                        <td headers="Description" colspan="6">
                            <p style="margin: 0px 0px 0px 0px">
                                Date Approved for Counting: 10/17/2020<br />
                                Your ballot has been received and will be included in the election night results.
                            </p>
                        </td>
                    </tr>
                
                    </tbody>
	                    </table>
                
            <div id="nodata">
                
            </div>


            <div id="div_security" title="Secure Information Required" style="display: none;">
                <div class="YourPrettyClass">
                    Before you can view the details for this absentee voter, you must enter additional information.
                </div>
                <br />
                <label for="txt_byear">Enter your Birth Year</label><input name="txt_byear" type="text" id="txt_byear" /><br />
                <label for="txt_bmvid">Enter your Driver's License Number</label><input name="txt_bmvid" type="text" id="txt_bmvid" />
            </div>
            <br />
            <input type="submit" name="btn_secure" value="secure" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;btn_secure&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, false))" id="btn_secure" style="display: none" /><input type="hidden" name="hid_byear" id="hid_byear" />
            <input type="hidden" name="hid_bmvid" id="hid_bmvid" />
            <input type="hidden" name="hid_app" id="hid_app" />
        
<script type="text/javascript">
//<![CDATA[
var Page_ValidationSummaries =  new Array(document.getElementById("ValidationSummary1"));
var Page_Validators =  new Array(document.getElementById("RequiredFieldValidatorlname"), document.getElementById("RegularExpressionValidator2"), document.getElementById("RequiredFieldfname"), document.getElementById("RegularExpressionValidator1"));
//]]>
</script>

<script type="text/javascript">
//<![CDATA[
var RequiredFieldValidatorlname = document.all ? document.all["RequiredFieldValidatorlname"] : document.getElementById("RequiredFieldValidatorlname");
RequiredFieldValidatorlname.controltovalidate = "frmLname";
RequiredFieldValidatorlname.errormessage = "Last Name is Required";
RequiredFieldValidatorlname.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
RequiredFieldValidatorlname.initialvalue = "";
var RegularExpressionValidator2 = document.all ? document.all["RegularExpressionValidator2"] : document.getElementById("RegularExpressionValidator2");
RegularExpressionValidator2.controltovalidate = "frmLname";
RegularExpressionValidator2.errormessage = "Please only enter letters, spaces and apostrophes for the last name";
RegularExpressionValidator2.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
RegularExpressionValidator2.validationexpression = "^[a-zA-Z\'-\'-\'\\s]{1,40}$";
var RequiredFieldfname = document.all ? document.all["RequiredFieldfname"] : document.getElementById("RequiredFieldfname");
RequiredFieldfname.controltovalidate = "frmfname";
RequiredFieldfname.errormessage = "First Name is required";
RequiredFieldfname.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
RequiredFieldfname.initialvalue = "";
var RegularExpressionValidator1 = document.all ? document.all["RegularExpressionValidator1"] : document.getElementById("RegularExpressionValidator1");
RegularExpressionValidator1.controltovalidate = "frmfname";
RegularExpressionValidator1.errormessage = "Please only enter letters, spaces and apostrophes for the first name";
RegularExpressionValidator1.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
RegularExpressionValidator1.validationexpression = "^[a-zA-Z\'\'-\'\\s]{1,40}$";
var ValidationSummary1 = document.all ? document.all["ValidationSummary1"] : document.getElementById("ValidationSummary1");
ValidationSummary1.headertext = "The following errors have been detected:";
//]]>
</script>


<script type="text/javascript">
//<![CDATA[

var Page_ValidationActive = false;
if (typeof(ValidatorOnLoad) == "function") {
    ValidatorOnLoad();
}

function ValidatorOnSubmit() {
    if (Page_ValidationActive) {
        return ValidatorCommonOnSubmit();
    }
    else {
        return true;
    }
}
        
(function(id) {
    var e = document.getElementById(id);
    if (e) {
        e.dispose = function() {
            Array.remove(Page_ValidationSummaries, document.getElementById(id));
        }
        e = null;
    }
})('ValidationSummary1');
WebForm_AutoFocus('frmLname');
document.getElementById('RequiredFieldValidatorlname').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('RequiredFieldValidatorlname'));
}

document.getElementById('RegularExpressionValidator2').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('RegularExpressionValidator2'));
}

document.getElementById('RequiredFieldfname').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('RequiredFieldfname'));
}

document.getElementById('RegularExpressionValidator1').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('RegularExpressionValidator1'));
}
//]]>
</script>
</form>



        <script language="javascript">
            function dissub() {
                document.getElementById('btnsubmit').disabled = true;
                if (document.getElementById('cmbelectionlist').options[document.getElementById('cmbelectionlist').selectedIndex].value == 'NONE') {
                    document.getElementById('btnsubmit').disabled = true;
                }
            }
        </script>
    </div>
    <!DOCTYPE html>




<footer id="page_footer">
    <div id="ctl07_span_app">
        <p>
            <a href="https://www.triadgsi.com/ohiovoterinfo/voterapp/AppStoreListing.html" title="Ohio Voter Application Listing">Get the Ohio Voter Info app for your smartphone or tablet!
            </a>
        </p>
    </div>
    
    
    <div id="ctl07_span_noovi">
        <p>
            <span id="ctl07_coname">Athens County Board of Elections</span>
            <br />
            <span id="ctl07_coadd1">15 S. Court Street, Room 130</span>
            <br />
            <span id="ctl07_coadd2">Athens, Oh 45701</span>
            <br />
            Phone:<span id="ctl07_cophone">(740) 592-3201</span>
            &nbsp;&nbsp;&nbsp;&nbsp; Fax:<span id="ctl07_cofax">(740) 592-3262</span>
            <br />
            <a id="ctl07_lnkemail" href="contact.aspx">Send an email to <span class="__cf_email__" data-cfemail="6f0e1b070a011c2f200706003c0a0c1d0a1b0e1d1600093c1b0e1b0a41080019">[email&#160;protected]</span></a>
            <br />
            <a id="ctl07_lnkweb" href="https://www.boe.ohio.gov/athens/">Go to Home Page</a>
        </p>
        <p>
            Copyright © 2009-2020 TGSI Web Design   -- 
        <a id="ctl07_hyp_accessibility" href="accessibility.aspx">Web Site Accessibility Statement</a>
        </p>
    </div>

</footer>


<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script></body>
</html>


