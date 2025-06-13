#!/bin/bash

declare -a fonts=(
#    0xProto
#    3270
#    AdwaitaMono
#    Agave
#    AnonymousPro
#    Arimo
#    AtkinsonHyperlegibleMono
#    AurulentSansMono
#    BigBlueTerminal
#    BitstreamVeraSansMono
#    CascadiaCode
#    CascadiaMono
#    CodeNewRoman
#    ComicShannsMono
#    CommitMono
#    Cousine
#    D2Coding
#    DaddyTimeMono
#    DejaVuSansMono
#    DepartureMono
#    DroidSansMono
#    EnvyCodeR
#    FantasqueSansMono
#    FiraCode
#    FiraMono
#    GeistMono
#    Go-Mono
#    Gohu
#    Hack
#    Hasklig
#    HeavyData
#    Hermit
#    iA-Writer
#    IBMPlexMono
#    InconsolataGo
#    Inconsolata
#    InconsolataLGC
#    IntelOneMono
#    Iosevka
#    IosevkaTerm
#    IosevkaTermSlab
#    JetBrainsMono
#    Lekton
#    LiberationMono
#    Lilex
#    MartianMono
    Meslo
#    Monaspace
#    Monofur
#    Monoid
#    Mononoki
#    MPlus
#    NerdFontsSymbolsOnly
#    Noto
#    OpenDyslexic
#    Overpass
#    ProFont
#    ProggyClean
#    Recursive
#    RobotoMono
#    ShareTechMono
#    SourceCodePro
#    SpaceMono
#    Terminus
#    Tinos
#    UbuntuMono
#    Ubuntu
#    UbuntuSans
#    VictorMono
#    ZedMono
)

version='3.4.0'
fonts_dir="${HOME}/.local/share/fonts"

if [[ ! -d "$fonts_dir" ]]; then
    mkdir -p "$fonts_dir"
fi

for font in "${fonts[@]}"; do
    zip_file="${font}.zip"
    download_url="https://github.com/ryanoasis/nerd-fonts/releases/download/v${version}/${zip_file}"
    echo "Downloading $download_url"
    wget "$download_url"
    unzip "$zip_file" -d "$fonts_dir"
    rm "$zip_file"
done

find "$fonts_dir" -name '*Windows Compatible*' -delete

fc-cache -fv

