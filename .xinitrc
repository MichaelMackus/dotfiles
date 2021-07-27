if ( which disp ); then
    disp
fi

if ( which dwmbar ); then
    while dwmbar; do sleep 30; done
fi &

if ( which redshift ); then
    redshift
fi &

dwm
