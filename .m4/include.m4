define(`startsvg', `dnl
`<svg width="$1" height="$2" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
    <style>
        /* <![CDATA[ */
        .line { fill: none; stroke: black; stroke-width: 1px; }
        text { text-anchor: middle; dominant-baseline: central; }
        /* ]]> */
    </style>'')dnl
define(`endsvg', `</svg>')dnl
define(`box', `dnl
`    <g transform="translate($1 $2)">
        <title>$3</title>
        <path class="line" d="M0 0H100V50H0ZM0 25H100M75 0V50"/>
        <text x="37.5" y="12.5">$4</text>
        <text x="87.5" y="12.5">$5</text>
        <text x="37.5" y="37.5">$6</text>
        <text x="87.5" y="37.5">$7</text>
    </g>'')dnl
define(`fromup', ``    <path class="line" d="M$1 $2v12.5h12.5"/>'')dnl
define(`ladder', ``    <path class="line" d="M$1 $2h12.5v$3h12.5"/>'')dnl
define(`ladder1', `ladder($1, $2, `-12.5')')dnl
define(`join', ``    <path class="line" d="M$1 $2h12.5v$3h12.5m0 25h-12.5v$3h-12.5"/>'')dnl
define(`join1', `join($1, $2, `15')')dnl
define(`join2', `join($1, $2, `42.5')')dnl
