<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<meta name="theme-color" content="#071b16">
<title>أذاني - إصدار 2026</title>

<style>
*{
    box-sizing:border-box;
    margin:0;
    padding:0;
    font-family:Arial,Tahoma,sans-serif;
}

body{
    background:
    radial-gradient(circle at top,#164d3b 0,#071b16 35%,#030908 100%);
    color:#fff;
    min-height:100vh;
}

.app{
    width:100%;
    max-width:520px;
    margin:auto;
    min-height:100vh;
    padding:18px 14px 30px;
}

.header{
    display:flex;
    align-items:center;
    justify-content:space-between;
    margin-bottom:18px;
}

.logo{
    width:58px;
    height:58px;
    border-radius:18px;
    background:linear-gradient(135deg,#16c784,#087653);
    display:flex;
    align-items:center;
    justify-content:center;
    font-size:30px;
    box-shadow:0 8px 30px #0007;
}

.title{
    flex:1;
    padding-right:12px;
}

.title h1{
    font-size:25px;
    margin-bottom:4px;
}

.title p{
    color:#a9cfc3;
    font-size:13px;
}

.version{
    font-size:11px;
    color:#8fbdb0;
    text-align:left;
}

.card{
    background:rgba(10,31,26,.88);
    border:1px solid rgba(255,255,255,.08);
    border-radius:24px;
    padding:18px;
    margin-bottom:14px;
    box-shadow:0 12px 35px #0005;
    backdrop-filter:blur(10px);
}

.date{
    text-align:center;
    color:#a8d5c7;
    font-size:14px;
    margin-bottom:8px;
}

.clock{
    text-align:center;
    font-size:45px;
    font-weight:bold;
}

.location{
    text-align:center;
    color:#9bc7ba;
    margin-top:8px;
    font-size:14px;
}

.nextPrayer{
    text-align:center;
    margin-top:18px;
    color:#77e5bd;
    font-size:15px;
}

.countdown{
    text-align:center;
    font-size:30px;
    font-weight:bold;
    margin-top:6px;
}

.section-title{
    font-size:18px;
    margin-bottom:13px;
}

.prayers{
    display:grid;
    gap:9px;
}

.prayer{
    display:flex;
    align-items:center;
    justify-content:space-between;
    padding:14px;
    border-radius:17px;
    background:#0b241e;
    border:1px solid transparent;
    transition:.2s;
}

.prayer.active{
    background:linear-gradient(90deg,#0c4938,#0b3027);
    border-color:#18c789;
    box-shadow:0 0 20px #18c78922;
}

.prayer-info{
    display:flex;
    align-items:center;
    gap:11px;
}

.prayer-icon{
    width:42px;
    height:42px;
    border-radius:14px;
    background:#12392f;
    display:flex;
    align-items:center;
    justify-content:center;
    font-size:21px;
}

.prayer-name{
    font-weight:bold;
    font-size:16px;
}

.prayer-status{
    color:#86bdb0;
    font-size:11px;
    margin-top:3px;
}

.prayer-time{
    font-size:20px;
    font-weight:bold;
    color:#dff8ef;
}

.buttons{
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:10px;
}

button,
.file-label{
    border:0;
    cursor:pointer;
    color:white;
    border-radius:15px;
    padding:14px 10px;
    font-size:14px;
    font-weight:bold;
    background:#12392f;
    border:1px solid #1b5545;
    transition:.2s;
    text-align:center;
}

button:hover,
.file-label:hover{
    background:#15503f;
}

.primary{
    background:linear-gradient(135deg,#16c784,#087653);
    border:0;
}

.danger{
    background:#472020;
    border-color:#6b2929;
}

input[type="file"]{
    display:none;
}

input[type="time"]{
    width:100%;
    margin-top:8px;
    padding:14px;
    border-radius:13px;
    border:1px solid #245244;
    background:#091c17;
    color:#fff;
    font-size:18px;
    outline:none;
    text-align:center;
}

select{
    width:100%;
    padding:13px;
    background:#091c17;
    color:white;
    border:1px solid #245244;
    border-radius:13px;
    outline:none;
}

.status{
    margin-top:12px;
    padding:12px;
    background:#071611;
    border-radius:13px;
    color:#9fcfc0;
    font-size:12px;
    text-align:center;
    line-height:1.8;
}

.toggle{
    display:flex;
    align-items:center;
    justify-content:space-between;
    padding:13px;
    background:#0b241e;
    border-radius:15px;
    margin-bottom:9px;
}

.switch{
    width:48px;
    height:26px;
    background:#30443f;
    border-radius:20px;
    position:relative;
    cursor:pointer;
}

.switch span{
    position:absolute;
    width:20px;
    height:20px;
    top:3px;
    right:4px;
    border-radius:50%;
    background:#fff;
    transition:.2s;
}

.switch.on{
    background:#16a876;
}

.switch.on span{
    right:24px;
}

.compass{
    width:170px;
    height:170px;
    border-radius:50%;
    margin:15px auto;
    border:2px solid #28705b;
    background:
        radial-gradient(circle,#11372d 0 45%,transparent 46%),
        conic-gradient(#174d3d,#0a221c,#174d3d);
    position:relative;
    display:flex;
    align-items:center;
    justify-content:center;
}

.compass::before{
    content:"N";
    position:absolute;
    top:9px;
    font-weight:bold;
    color:#a9dfd0;
}

.needle{
    width:5px;
    height:110px;
    background:linear-gradient(#16c784 50%,#b9d5cd 50%);
    border-radius:10px;
    transform-origin:center;
    transform:rotate(0deg);
    transition:1s;
}

.qibla{
    text-align:center;
}

.degree{
    font-size:16px;
    color:#8dc7b7;
}

.footer{
    text-align:center;
    color:#70998e;
    font-size:12px;
    line-height:1.8;
    margin-top:20px;
}

.toast{
    position:fixed;
    left:50%;
    bottom:22px;
    transform:translateX(-50%) translateY(100px);
    background:#12392f;
    border:1px solid #28705b;
    padding:13px 18px;
    border-radius:15px;
    font-size:13px;
    opacity:0;
    transition:.3s;
    z-index:99;
    max-width:90%;
    text-align:center;
}

.toast.show{
    transform:translateX(-50%) translateY(0);
    opacity:1;
}

.test-box{
    background:#0b241e;
    border-radius:17px;
    padding:14px;
    margin-top:10px;
}

.small-title{
    color:#9fcfc0;
    font-size:13px;
    margin-bottom:5px;
}
</style>
</head>

<body>

<div class="app">

<div class="header">

    <div class="logo">🕌</div>

    <div class="title">
        <h1>أذاني</h1>
        <p>مواقيت الصلاة والأذان</p>
    </div>

    <div class="version">
        إصدار<br>
        <b>2026</b>
    </div>

</div>


<!-- الساعة -->

<div class="card">

    <div class="date" id="dateText">--</div>

    <div class="clock" id="clock">--:--:--</div>

    <div class="location" id="locationText">
        الإسماعيلية
    </div>

    <div class="nextPrayer" id="nextPrayer">
        الصلاة القادمة
    </div>

    <div class="countdown" id="countdown">
        --:--:--
    </div>

</div>


<!-- مواقيت الصلاة -->

<div class="card">

    <div class="section-title">
        🕋 مواقيت الصلاة
    </div>

    <div class="prayers">

        <div class="prayer" id="fajrRow">
            <div class="prayer-info">
                <div class="prayer-icon">🌙</div>
                <div>
                    <div class="prayer-name">الفجر</div>
                    <div class="prayer-status">صلاة الفجر</div>
                </div>
            </div>
            <div class="prayer-time" id="fajr">--:--</div>
        </div>

        <div class="prayer" id="sunriseRow">
            <div class="prayer-info">
                <div class="prayer-icon">🌅</div>
                <div>
                    <div class="prayer-name">الشروق</div>
                    <div class="prayer-status">وقت الشروق</div>
                </div>
            </div>
            <div class="prayer-time" id="sunrise">--:--</div>
        </div>

        <div class="prayer" id="dhuhrRow">
            <div class="prayer-info">
                <div class="prayer-icon">☀️</div>
                <div>
                    <div class="prayer-name">الظهر</div>
                    <div class="prayer-status">صلاة الظهر</div>
                </div>
            </div>
            <div class="prayer-time" id="dhuhr">--:--</div>
        </div>

        <div class="prayer" id="asrRow">
            <div class="prayer-info">
                <div class="prayer-icon">🌤️</div>
                <div>
                    <div class="prayer-name">العصر</div>
                    <div class="prayer-status">صلاة العصر</div>
                </div>
            </div>
            <div class="prayer-time" id="asr">--:--</div>
        </div>

        <div class="prayer" id="maghribRow">
            <div class="prayer-info">
                <div class="prayer-icon">🌇</div>
                <div>
                    <div class="prayer-name">المغرب</div>
                    <div class="prayer-status">صلاة المغرب</div>
                </div>
            </div>
            <div class="prayer-time" id="maghrib">--:--</div>
        </div>

        <div class="prayer" id="ishaRow">
            <div class="prayer-info">
                <div class="prayer-icon">🌌</div>
                <div>
                    <div class="prayer-name">العشاء</div>
                    <div class="prayer-status">صلاة العشاء</div>
                </div>
            </div>
            <div class="prayer-time" id="isha">--:--</div>
        </div>

    </div>

</div>


<!-- إعدادات الأذان -->

<div class="card">

    <div class="section-title">
        🔔 إعدادات الأذان
    </div>

    <div class="toggle">
        <span>تشغيل الأذان</span>

        <div class="switch" id="adhanSwitch">
            <span></span>
        </div>
    </div>

    <div class="toggle">
        <span>التنبيهات</span>

        <div class="switch" id="notifySwitch">
            <span></span>
        </div>
    </div>

    <label class="file-label"
           style="display:block">

        🔊 اختيار ملف الأذان

        <input
            type="file"
            id="adhanFile"
            accept="audio/*">

    </label>

    <div class="buttons"
         style="margin-top:10px">

        <button
            class="primary"
            id="testAdhan">

            ▶ اختبار الأذان

        </button>

        <button id="stopAdhan">

            ■ إيقاف

        </button>

    </div>

    <div class="status" id="audioStatus">
        لم يتم اختيار ملف أذان بعد.
    </div>

</div>


<!-- شاشة اختبار الأذان -->

<div class="card">

    <div class="section-title">
        🧪 شاشة اختبار الأذان
    </div>

    <div class="status">
        يمكنك من هنا تشغيل الأذان فورًا أو تحديد
        موعد مخصص لاختبار تشغيل الأذان.
    </div>


    <div class="test-box">

        <div class="small-title">
            اختبار فوري
        </div>

        <button
            class="primary"
            id="instantTestAdhan"
            style="width:100%;margin-top:8px">

            🔊 تشغيل اختبار الأذان الآن

        </button>

        <button
            id="stopTestAdhan"
            style="width:100%;margin-top:8px">

            ⏹ إيقاف اختبار الأذان

        </button>

    </div>


    <div class="test-box">

        <div class="small-title">
            ⏰ موعد اختبار مخصص
        </div>

        <input
            type="time"
            id="customTestTime">

        <button
            class="primary"
            id="saveTestTime"
            style="width:100%;margin-top:10px">

            💾 حفظ موعد الاختبار

        </button>

        <button
            class="danger"
            id="cancelTestTime"
            style="width:100%;margin-top:8px">

            🗑 إلغاء الموعد

        </button>

    </div>


    <div
        class="status"
        id="testScheduleStatus">

        لا يوجد موعد اختبار محفوظ.

    </div>

</div>


<!-- اختيار المدينة -->

<div class="card">

    <div class="section-title">
        📍 المدينة
    </div>

    <select id="citySelect">

        <option value="30.5965,32.2715">
            الإسماعيلية
        </option>

        <option value="30.0444,31.2357">
            القاهرة
        </option>

        <option value="31.2001,29.9187">
            الإسكندرية
        </option>

        <option value="31.2653,32.3019">
            بورسعيد
        </option>

        <option value="29.9668,32.5498">
            السويس
        </option>

        <option value="30.0131,31.2089">
            الجيزة
        </option>

        <option value="30.5085,31.0662">
            الدقهلية
        </option>

        <option value="31.0364,31.3807">
            المنصورة
        </option>

        <option value="27.1809,31.1837">
            أسيوط
        </option>

        <option value="25.6872,32.6396">
            الأقصر
        </option>

        <option value="24.0889,32.8998">
            أسوان
        </option>

    </select>


    <button
        class="primary"
        id="locationBtn"
        style="width:100%;margin-top:10px">

        📍 استخدام موقعي الحالي

    </button>

</div>


<!-- القبلة -->

<div class="card qibla">

    <div class="section-title">
        🕋 اتجاه القبلة
    </div>

    <div class="compass">

        <div
            class="needle"
            id="needle">
        </div>

    </div>

    <div
        class="degree"
        id="qiblaText">

        اتجاه القبلة: --°

    </div>

</div>


<!-- معلومات التطبيق -->

<div class="card">

    <div class="section-title">
        ⚙️ معلومات التطبيق
    </div>

    <div class="status">

        <b>أذاني</b><br>

        إصدار 2026<br>

        المبرمج: م/ محمد صبري

    </div>

</div>


<div class="footer">

    🕌 أذاني<br>

    مواقيت الصلاة والأذان - إصدار 2026<br>

    المبرمج: م/ محمد صبري

</div>

</div>


<div class="toast" id="toast"></div>


<script>

/* ==========================================
   أذاني - إصدار 2026
   المبرمج: م/ محمد صبري
   ========================================== */

const $ = id => document.getElementById(id);

let latitude = 30.5965;
let longitude = 32.2715;

let prayerTimes = {};

let adhanEnabled =
    localStorage.getItem("adhanEnabled") === "true";

let notifyEnabled =
    localStorage.getItem("notifyEnabled") === "true";

let audio = new Audio();

let audioURL = null;

let lastPlayed = "";

let customTestTime =
    localStorage.getItem("customTestTime") || "";

let customTestEnabled =
    localStorage.getItem("customTestEnabled") === "true";

let lastCustomTest = "";


/* أسماء الصلوات */

const prayerNames = {

    fajr:"الفجر",

    sunrise:"الشروق",

    dhuhr:"الظهر",

    asr:"العصر",

    maghrib:"المغرب",

    isha:"العشاء"

};


/* التاريخ */

function getArabicDate(){

    const d = new Date();

    const days = [
        "الأحد",
        "الإثنين",
        "الثلاثاء",
        "الأربعاء",
        "الخميس",
        "الجمعة",
        "السبت"
    ];

    const months = [
        "يناير",
        "فبراير",
        "مارس",
        "أبريل",
        "مايو",
        "يونيو",
        "يوليو",
        "أغسطس",
        "سبتمبر",
        "أكتوبر",
        "نوفمبر",
        "ديسمبر"
    ];

    return days[d.getDay()]
        + "، "
        + d.getDate()
        + " "
        + months[d.getMonth()]
        + " "
        + d.getFullYear();

}


/* أرقام عربية */

function arabicNumbers(str){

    return String(str).replace(
        /[0-9]/g,
        d => "٠١٢٣٤٥٦٧٨٩"[d]
    );

}


/* حساب موقع الشمس */

function sunPosition(date,lat,lon){

    const rad = Math.PI / 180;

    const start =
        new Date(
            date.getFullYear(),
            0,
            0
        );

    const diff =
        date - start;

    const day =
        Math.floor(
            diff / 86400000
        );

    const gamma =
        2 * Math.PI / 365 *
        (day - 1);

    const eqtime =
        229.18 *
        (
            0.000075
            + 0.001868 * Math.cos(gamma)
            - 0.032077 * Math.sin(gamma)
            - 0.014615 * Math.cos(2*gamma)
            - 0.040849 * Math.sin(2*gamma)
        );

    const decl =
        0.006918
        - 0.399912 * Math.cos(gamma)
        + 0.070257 * Math.sin(gamma)
        - 0.006758 * Math.cos(2*gamma)
        + 0.000907 * Math.sin(2*gamma)
        - 0.002697 * Math.cos(3*gamma)
        + 0.00148 * Math.sin(3*gamma);

    return {
        eqtime:eqtime,
        decl:decl
    };

}


/* حساب زاوية الساعة */

function calculateAsrHourAngle(
    factor,
    lat,
    decl
){

    const rad = Math.PI / 180;

    const angle =
        Math.atan(
            1 /
            (
                factor +
                Math.tan(
                    Math.abs(
                        lat * rad - decl
                    )
                )
            )
        );

    const cosH =
        (
            Math.sin(angle)
            -
            Math.sin(lat * rad)
            * Math.sin(decl)
        )
        /
        (
            Math.cos(lat * rad)
            * Math.cos(decl)
        );

    if(cosH > 1 || cosH < -1)
        return null;

    return Math.acos(cosH) / rad;

}


/* حساب مواقيت الصلاة */

function calculatePrayerTimes(){

    const date = new Date();

    const lat = latitude;

    const lon = longitude;

    const pos =
        sunPosition(
            date,
            lat,
            lon
        );

    const rad = Math.PI / 180;

    const noon =
        720
        - 4 * lon
        - pos.eqtime;


    function timeForAngle(angle){

        const cosH =
            (
                Math.cos(angle * rad)
                -
                Math.sin(lat * rad)
                * Math.sin(pos.decl)
            )
            /
            (
                Math.cos(lat * rad)
                * Math.cos(pos.decl)
            );

        if(cosH > 1 || cosH < -1)
            return null;

        return Math.acos(cosH) / rad;

    }


    const fajrH =
        timeForAngle(19.5);

    const sunriseH =
        timeForAngle(0.833);

    const asrH =
        calculateAsrHourAngle(
            1,
            lat,
            pos.decl
        );


    const fajr =
        fajrH === null
        ? null
        : noon - 4 * fajrH;

    const sunrise =
        sunriseH === null
        ? null
        : noon - 4 * sunriseH;

    const sunset =
        sunriseH === null
        ? null
        : noon + 4 * sunriseH;

    const asr =
        asrH === null
        ? null
        : noon + 4 * asrH;

    const dhuhr = noon;

    const maghrib = sunset;

    const ishaH =
        timeForAngle(18);

    const isha =
        ishaH === null
        ? null
        : noon + 4 * ishaH;


    prayerTimes = {

        fajr:fajr,

        sunrise:sunrise,

        dhuhr:dhuhr,

        asr:asr,

        maghrib:maghrib,

        isha:isha

    };


    displayPrayerTimes();

}


/* تحويل دقائق إلى وقت */

function minutesToTime(minutes){

    if(
        minutes === null ||
        !Number.isFinite(minutes)
    )
        return "--:--";


    const offset =
        new Date().getTimezoneOffset();

    let localMinutes =
        minutes - offset;


    let h =
        Math.floor(
            localMinutes / 60
        );

    let m =
        Math.round(
            localMinutes % 60
        );


    h =
        ((h % 24) + 24) % 24;


    if(m >= 60){

        m = 0;

        h =
            (h + 1) % 24;

    }


    return String(h)
        .padStart(2,"0")
        + ":"
        +
        String(m)
        .padStart(2,"0");

}


/* تحويل وقت إلى دقائق */

function timeStringToMinutes(str){

    if(
        !str ||
        str === "--:--"
    )
        return null;

    const p =
        str.split(":");

    return Number(p[0]) * 60
        +
        Number(p[1]);

}


/* عرض المواقيت */

function displayPrayerTimes(){

    for(
        const key in prayerNames
    ){

        const element =
            $(key);

        if(element){

            element.textContent =
                minutesToTime(
                    prayerTimes[key]
                );

        }

    }

}


/* قائمة الصلاة */

function getPrayerList(){

    return [

        {
            key:"fajr",
            name:"الفجر"
        },

        {
            key:"dhuhr",
            name:"الظهر"
        },

        {
            key:"asr",
            name:"العصر"
        },

        {
            key:"maghrib",
            name:"المغرب"
        },

        {
            key:"isha",
            name:"العشاء"
        }

    ];

}


/* الصلاة القادمة */

function updateNextPrayer(){

    const now =
        new Date();

    const currentMinutes =
        now.getHours() * 60
        +
        now.getMinutes()
        +
        now.getSeconds()/60;


    const list =
        getPrayerList();

    let next = null;


    for(
        const p of list
    ){

        const time =
            minutesToTime(
                prayerTimes[p.key]
            );

        const target =
            timeStringToMinutes(
                time
            );

        if(
            target !== null &&
            target > currentMinutes
        ){

            next = {
                ...p,
                target:target
            };

            break;

        }

    }


    if(!next){

        const p = list[0];

        const time =
            minutesToTime(
                prayerTimes[p.key]
            );

        next = {

            ...p,

            target:
                timeStringToMinutes(
                    time
                ) + 1440

        };

    }


    $("nextPrayer").textContent =
        "الصلاة القادمة: "
        +
        next.name;


    let diff =
        next.target -
        currentMinutes;


    if(diff < 0)
        diff += 1440;


    const hours =
        Math.floor(
            diff / 60
        );

    const minutes =
        Math.floor(
            diff % 60
        );

    const seconds =
        Math.floor(
            (diff * 60) % 60
        );


    $("countdown").textContent =
        arabicNumbers(
            String(hours)
            .padStart(2,"0")
            + ":"
            +
            String(minutes)
            .padStart(2,"0")
            + ":"
            +
            String(seconds)
            .padStart(2,"0")
        );


    highlightPrayer(
        next.key
    );

}


/* تمييز الصلاة */

function highlightPrayer(key){

    document
    .querySelectorAll(".prayer")
    .forEach(
        el =>
        el.classList.remove("active")
    );


    const row =
        $(key + "Row");


    if(row)
        row.classList.add("active");

}


/* الساعة */

function updateClock(){

    const now =
        new Date();

    $("clock").textContent =
        arabicNumbers(
            String(now.getHours())
            .padStart(2,"0")
            + ":"
            +
            String(now.getMinutes())
            .padStart(2,"0")
            + ":"
            +
            String(now.getSeconds())
            .padStart(2,"0")
        );


    $("dateText").textContent =
        getArabicDate();

}


/* فحص وقت الأذان */

function checkAdhan(){

    if(!adhanEnabled)
        return;


    const now =
        new Date();


    const unique =
        now.getFullYear()
        + "-"
        +
        (now.getMonth()+1)
        + "-"
        +
        now.getDate()
        + "-"
        +
        now.getHours()
        + "-"
        +
        now.getMinutes();


    const list =
        getPrayerList();


    for(
        const p of list
    ){

        const time =
            minutesToTime(
                prayerTimes[p.key]
            );


        const current =
            String(now.getHours())
            .padStart(2,"0")
            + ":"
            +
            String(now.getMinutes())
            .padStart(2,"0");


        if(
            time === current &&
            lastPlayed !== unique
        ){

            lastPlayed =
                unique;


            playAdhan();


            showToast(
                "حان الآن وقت صلاة "
                + p.name
            );


            sendNotification(
                "حان وقت الصلاة",
                "حان الآن وقت صلاة "
                + p.name
            );

        }

    }

}


/* تشغيل الأذان */

function playAdhan(){

    if(!audioURL){

        try{

            const AudioContext =
                window.AudioContext ||
                window.webkitAudioContext;

            const ctx =
                new AudioContext();

            const osc =
                ctx.createOscillator();

            const gain =
                ctx.createGain();


            osc.frequency.value =
                660;


            gain.gain.setValueAtTime(
                0.001,
                ctx.currentTime
            );


            gain.gain.exponentialRampToValueAtTime(
                0.2,
                ctx.currentTime + 0.05
            );


            gain.gain.exponentialRampToValueAtTime(
                0.001,
                ctx.currentTime + 1.2
            );


            osc.connect(gain);

            gain.connect(
                ctx.destination
            );


            osc.start();

            osc.stop(
                ctx.currentTime + 1.2
            );

        }catch(e){

            showToast(
                "تعذر تشغيل الصوت."
            );

        }

        return;

    }


    audio.currentTime = 0;


    audio.play()
    .catch(() => {

        showToast(
            "اضغط اختبار الأذان مرة واحدة للسماح بالصوت."
        );

    });

}


/* إيقاف الأذان */

function stopAdhan(){

    audio.pause();

    audio.currentTime = 0;

}


/* اختيار ملف الأذان */

$("adhanFile")
.addEventListener(
    "change",
    function(){

        const file =
            this.files[0];

        if(!file)
            return;


        if(audioURL)
            URL.revokeObjectURL(
                audioURL
            );


        audioURL =
            URL.createObjectURL(
                file
            );


        audio =
            new Audio(
                audioURL
            );


        audio.preload =
            "auto";


        $("audioStatus")
        .textContent =
            "تم اختيار الأذان: "
            +
            file.name;


        showToast(
            "تم تحميل ملف الأذان بنجاح"
        );

    }
);


/* زر الاختبار */

$("testAdhan")
.addEventListener(
    "click",
    function(){

        playAdhan();

    }
);


/* زر الإيقاف */

$("stopAdhan")
.addEventListener(
    "click",
    function(){

        stopAdhan();

    }
);


/* تفعيل الأذان */

$("adhanSwitch")
.addEventListener(
    "click",
    function(){

        adhanEnabled =
            !adhanEnabled;


        localStorage.setItem(
            "adhanEnabled",
            adhanEnabled
        );


        updateSwitches();


        showToast(
            adhanEnabled
            ? "تم تفعيل الأذان"
            : "تم إيقاف الأذان"
        );

    }
);


/* التنبيهات */

$("notifySwitch")
.addEventListener(
    "click",
    async function(){

        if(!notifyEnabled){

            if(
                "Notification"
                in window
            ){

                const permission =
                    await Notification
                    .requestPermission();


                if(
                    permission !==
                    "granted"
                ){

                    showToast(
                        "لم يتم السماح بالتنبيهات"
                    );

                    return;

                }

            }

        }


        notifyEnabled =
            !notifyEnabled;


        localStorage.setItem(
            "notifyEnabled",
            notifyEnabled
        );


        updateSwitches();

    }
);


/* تحديث المفاتيح */

function updateSwitches(){

    $("adhanSwitch")
    .classList.toggle(
        "on",
        adhanEnabled
    );


    $("notifySwitch")
    .classList.toggle(
        "on",
        notifyEnabled
    );

}


/* التنبيه */

function sendNotification(
    title,
    body
){

    if(!notifyEnabled)
        return;


    if(
        "Notification" in window &&
        Notification.permission ===
        "granted"
    ){

        new Notification(
            title,
            {
                body:body
            }
        );

    }

}


/* تغيير المدينة */

$("citySelect")
.addEventListener(
    "change",
    function(){

        const parts =
            this.value.split(",");


        const option =
            this.options[
                this.selectedIndex
            ];


        setLocation(
            Number(parts[0]),
            Number(parts[1]),
            option.text
        );

    }
);


/* ضبط الموقع */

function setLocation(
    lat,
    lon,
    name
){

    latitude =
        Number(lat);

    longitude =
        Number(lon);


    $("locationText")
    .textContent =
        "📍 " + name;


    calculatePrayerTimes();

    calculateQibla();

}


/* الموقع الحالي */

$("locationBtn")
.addEventListener(
    "click",
    function(){

        if(
            !navigator.geolocation
        ){

            showToast(
                "المتصفح لا يدعم تحديد الموقع."
            );

            return;

        }


        showToast(
            "جارٍ تحديد موقعك..."
        );


        navigator.geolocation
        .getCurrentPosition(

            function(position){

                latitude =
                    position.coords.latitude;

                longitude =
                    position.coords.longitude;


                $("locationText")
                .textContent =
                    "📍 موقعك الحالي";


                calculatePrayerTimes();

                calculateQibla();


                showToast(
                    "تم تحديد موقعك بنجاح"
                );

            },

            function(){

                showToast(
                    "تعذر تحديد الموقع. اختر المدينة يدويًا."
                );

            },

            {
                enableHighAccuracy:true,
                timeout:10000,
                maximumAge:600000
            }

        );

    }
);


/* اتجاه القبلة */

function calculateQibla(){

    const kaabaLat =
        21.422487;

    const kaabaLon =
        39.826206;


    const lat1 =
        latitude *
        Math.PI / 180;

    const lat2 =
        kaabaLat *
        Math.PI / 180;


    const deltaLon =
        (
            kaabaLon -
            longitude
        )
        *
        Math.PI / 180;


    const y =
        Math.sin(deltaLon)
        *
        Math.cos(lat2);


    const x =
        Math.cos(lat1)
        *
        Math.sin(lat2)
        -
        Math.sin(lat1)
        *
        Math.cos(lat2)
        *
        Math.cos(deltaLon);


    let bearing =
        Math.atan2(y,x)
        *
        180 / Math.PI;


    bearing =
        (bearing + 360) % 360;


    $("qiblaText")
    .textContent =
        "اتجاه القبلة: "
        +
        arabicNumbers(
            bearing.toFixed(1)
        )
        +
        "°";


    $("needle")
    .style.transform =
        "rotate("
        +
        bearing
        +
        "deg)";

}


/* ==========================================
   شاشة اختبار الأذان
   ========================================== */


/* عرض الموعد */

function updateTestScheduleUI(){

    const box =
        $("testScheduleStatus");


    if(
        customTestEnabled &&
        customTestTime
    ){

        box.innerHTML =
            "⏰ موعد اختبار الأذان: <b>"
            +
            customTestTime
            +
            "</b><br>"
            +
            "<span style='color:#77e5bd'>"
            +
            "الاختبار مفعل وسيتم تشغيله عند الموعد."
            +
            "</span>";


        $("customTestTime")
        .value =
            customTestTime;

    }else{

        box.innerHTML =
            "لا يوجد موعد اختبار محفوظ.";

    }

}


/* اختبار فوري */

$("instantTestAdhan")
.addEventListener(
    "click",
    function(){

        playAdhan();

        showToast(
            "🔊 تم تشغيل اختبار الأذان"
        );

    }
);


/* إيقاف الاختبار */

$("stopTestAdhan")
.addEventListener(
    "click",
    function(){

        stopAdhan();

        showToast(
            "⏹ تم إيقاف الأذان"
        );

    }
);


/* حفظ موعد الاختبار */

$("saveTestTime")
.addEventListener(
    "click",
    function(){

        const time =
            $("customTestTime")
            .value;


        if(!time){

            showToast(
                "اختر وقت الاختبار أولًا."
            );

            return;

        }


        customTestTime =
            time;


        customTestEnabled =
            true;


        localStorage.setItem(
            "customTestTime",
            customTestTime
        );


        localStorage.setItem(
            "customTestEnabled",
            "true"
        );


        updateTestScheduleUI();


        showToast(
            "✅ تم حفظ موعد اختبار الأذان"
        );

    }
);


/* إلغاء موعد الاختبار */

$("cancelTestTime")
.addEventListener(
    "click",
    function(){

        customTestTime =
            "";

        customTestEnabled =
            false;


        localStorage.removeItem(
            "customTestTime"
        );


        localStorage.setItem(
            "customTestEnabled",
            "false"
        );


        $("customTestTime")
        .value =
            "";


        updateTestScheduleUI();


        showToast(
            "🗑 تم إلغاء موعد الاختبار"
        );

    }
);


/* فحص الموعد المخصص */

function checkCustomAdhanTest(){

    if(!customTestEnabled)
        return;


    if(!customTestTime)
        return;


    const now =
        new Date();


    const currentTime =
        String(now.getHours())
        .padStart(2,"0")
        + ":"
        +
        String(now.getMinutes())
        .padStart(2,"0");


    const dateKey =
        now.getFullYear()
        + "-"
        +
        (now.getMonth()+1)
        + "-"
        +
        now.getDate();


    const uniqueKey =
        dateKey
        + "-"
        +
        customTestTime;


    if(
        currentTime ===
        customTestTime &&
        lastCustomTest !==
        uniqueKey
    ){

        lastCustomTest =
            uniqueKey;


        playAdhan();


        showToast(
            "🧪 حان الآن موعد اختبار الأذان"
        );


        sendNotification(
            "🧪 اختبار الأذان",
            "حان الآن موعد اختبار تشغيل الأذان."
        );

    }

}


/* الرسالة */

function showToast(message){

    const toast =
        $("toast");


    toast.textContent =
        message;


    toast.classList.add(
        "show"
    );


    clearTimeout(
        window.toastTimer
    );


    window.toastTimer =
        setTimeout(
            function(){

                toast.classList.remove(
                    "show"
                );

            },
            3000
        );

}


/* بدء البرنامج */

function startApp(){

    updateSwitches();

    updateTestScheduleUI();

    updateClock();

    calculatePrayerTimes();

    calculateQibla();

    updateNextPrayer();


    setInterval(
        updateClock,
        1000
    );


    setInterval(
        updateNextPrayer,
        1000
    );


    setInterval(
        checkAdhan,
        1000
    );


    setInterval(
        checkCustomAdhanTest,
        1000
    );

}


/* تشغيل */

startApp();

</script>

</body>
</html>