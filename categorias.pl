#!/usr/bin/perl -w

#
# The categories recognized by tvheadend (see epg.c) 
#  

my $MOVIE             =    "Movie / Drama";
my $THRILLER          =    "Detective / Thriller";
my $ADVENTURE         =    "Adventure / Western / War";
my $SF                =    "Science fiction / Fantasy / Horror";
my $COMEDY            =    "Comedy";
my $SOAP              =    "Soap / Melodrama / Folkloric";
my $ROMANCE           =    "Romance";
my $HISTORICAL        =    "Serious / Classical / Religious / Historical movie / Drama";
my $XXX               =    "Adult movie / Drama";

my $NEWS              =    "News / Current affairs";
my $WEATHER           =    "News / Weather report";
my $NEWS_MAGAZINE     =    "News magazine";
my $DOCUMENTARY       =    "Documentary";
my $DEBATE            =    "Discussion / Interview / Debate";
my $INTERVIEW         =    $DEBATE ;

my $SHOW              =    "Show / Game show";
my $GAME              =    "Game show / Quiz / Contest";
my $VARIETY           =    "Variety show";
my $TALKSHOW          =    "Talk show";

my $SPORT             =    "Sports";
my $SPORT_SPECIAL     =    "Special events (Olympic Games; World Cup; etc.)";
my $SPORT_MAGAZINE    =    "Sports magazines";
my $FOOTBALL          =    "Football / Soccer";
my $TENNIS            =    "Tennis / Squash";
my $SPORT_TEAM        =    "Team sports (excluding football)";
my $ATHLETICS         =    "Athletics";
my $SPORT_MOTOR       =    "Motor sport";
my $SPORT_WATER       =    "Water sport";

my $KIDS              =    "Children's / Youth programmes";
my $KIDS_0_5          =    "Pre-school children's programmes";
my $KIDS_6_14         =    "Entertainment programmes for 6 to 14";
my $KIDS_10_16        =    "Entertainment programmes for 10 to 16";
my $EDUCATIONAL       =    "Informational / Educational / School programmes";
my $CARTOON           =    "Cartoons / Puppets";

my $MUSIC             =    "Music / Ballet / Dance";
my $ROCK_POP          =    "Rock / Pop";
my $CLASSICAL         =    "Serious music / Classical music";
my $FOLK              =    "Folk / Traditional music";
my $JAZZ              =    "Jazz";
my $OPERA             =    "Musical / Opera";

my $CULTURE           =    "Arts / Culture (without music)";
my $PERFORMING        =    "Performing arts";
my $FINE_ARTS         =    "Fine arts";
my $RELIGION          =    "Religion";
my $POPULAR_ART       =    "Popular culture / Traditional arts";
my $LITERATURE        =    "Literature";
my $FILM              =    "Film / Cinema";
my $EXPERIMENTAL_FILM =    "Experimental film / Video";
my $BROADCASTING      =    "Broadcasting / Press";

my $SOCIAL            =    "Social / Political issues / Economics";
my $MAGAZINE          =    "Magazines / Reports / Documentary";
my $ECONOMIC          =    "Economics / Social advisory";
my $VIP               =    "Remarkable people";

my $SCIENCE           =    "Education / Science / Factual topics";
my $NATURE            =    "Nature / Animals / Environment";
my $TECHNOLOGY        =    "Technology / Natural sciences";
my $DIOLOGY           =    $TECHNOLOGY;
my $MEDECINE          =    "Medicine / Physiology / Psychology";
my $FOREIGN           =    "Foreign countries / Expeditions";
my $SPIRITUAL         =    "Social / Spiritual sciences";
my $FURTHER_EDUCATION =    "Further education";
my $LANGUAGES         =    "Languages";
my $NOCLASS           =    "Unpublished";
my $HOBBIES           =    "Leisure hobbies";
my $TRAVEL            =    "Tourism / Travel";
my $HANDICRAF         =    "Handicraft";
my $MOTORING          =    "Motoring";
my $FITNESS           =    "Fitness and health";
my $COOKING           =    "Cooking";
my $SHOPPING          =    "Advertisement / Shopping";
my $GARDENING         =    "Gardening";

#
# This is the 
#

my %REPLACE=(
    "El Tiempo"             => $WEATHER ,
    "Todas"                 => $TALKSHOW ,
    "Talk Show"             => $TALKSHOW ,
    "Toros"                 => $POPULAR_ART ,
    "Suspense / Thriller"   => $MOVIE ,
    "Drama"                 => $MOVIE ,
    "Romántica"             => $SOAP ,
    "Comedia"               => $COMEDY ,
    "Esquí"                 => $SPORT_SPECIAL ,
    "Deportes de invierno"  => $SPORT_SPECIAL ,
    "Otros deportes"        => $SPORT ,
    "Ciclismo"              => $SPORT ,
    "Automovilismo"         => $SPORT_MOTOR ,
    "Fútbol"                => $FOOTBALL ,
    "Champions League"      => $FOOTBALL ,
    "Cultural\/Educativo"   => $VARIETY ,
    "Acción"                => $MOVIE ,
    "Telefilme"             => $MOVIE ,
    "Ocio y Aficiones"      => $HOBBIES,
    "Música"                => $MUSIC ,
    "Musicales"             => $OPERA,
    "Magacín"               => $MAGAZINE ,
    "Magazine"              => $MAGAZINE ,
    "Magazines"             => $MAGAZINE ,
    "Variedades"            => $VARIETY ,
    "Entretenimiento"       => $VARIETY ,
    "Concurso"              => $VARIETY ,
    "Concursos"             => $VARIETY ,
    "Informativo"           => $NEWS , 
    "Informativos"          => $NEWS ,
    "Noticias"              => $NEWS ,
    "Documentales"          => $DOCUMENTARY ,
    "Todas"                 => $SOAP ,
    "Series"                => $SOAP ,
    "Serie"                 => $SOAP ,
    "Entrevistas"           => $INTERVIEW ,
    "Infantil"              => $KIDS ,
    "Información"           => $NEWS ,
    "Película para adultos" => $XXX ,
    "Cine"                  => $FILM ,
    "Espectáculo"           => $PERFORMING ,
    "Otros"                 => $VARIETY ,
    "Deportes"              => $SPORT ,
    "Deporte"               => $SPORT ,
    "Baloncesto"            => $SPORT ,
    "Religion"              => $RELIGION ,
    "Religiosos"            => $RELIGION ,
    "Fitness"               => $FITNESS ,
    "Animación"             => $CARTOON ,
    "Humor"                 => $COMEDY ,
    "Cortometraje"          => $MOVIE ,
    "Sin clasificar"        => $NOCLASS ,
    "Viajes"                => $DOCUMENTARY ,
    "Clásica"               => $CLASSICAL ,
    "Política"              => $SOCIAL ,
    "Debate"                => $DEBATE ,
    "Debates"               => $DEBATE ,
    "Naturaleza y animales" => $NATURE ,
    "Aventuras"             => $ADVENTURE ,
    "Bélica"                => $ADVENTURE ,
    "Reality Show"          => $VARIETY ,
    "Biográficos"           => $DOCUMENTARY ,
    "Ciencia y tecnología"  => $TECHNOLOGY ,
    "Actualidad"            => $NEWS ,
    "Videoclips"            => $MUSIC ,
    "Fantásticas"           => $SF ,
    "Programas"             => $SHOW ,
 ) ; 

my $PRE  = '<category lang=\"es\">' ;
my $POST = '</category>'  ;

sub myfilter {
  my ($a) = @_;
  if ( exists $REPLACE{$a} ) {     
      return $REPLACE{$a} ;
  } else {
      print STDERR "Warning: Unmanaged category: '$a'\n" ;
      return $a ;
  }
}

while (<>) {
    my $line = $_ ;
    $line =~ s/($PRE)(.*)($POST)/"$1".myfilter("$2")."$3"/ge ;
    print $line;
} 
