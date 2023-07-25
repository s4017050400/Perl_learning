use Excel::Writer::XLSX;
($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();  #grab a time
$nowtime = sprintf("%02d%02d%02d%02d%02d%02d", $year-100, $mon+1, $mday, $hour, $min, $sec);

# Create a new Excel Workbook
$out_filename = 'test1_'.$nowtime.'.xlsx'; #test1_230725215223
my $workbook = Excel::Writer::XLSX->new($out_filename);


#localtime()：這是Perl的一個內建函式，用於獲取當前的本地時間。它會返回一個包含了年、月、日、時、分、秒等時間元素的列表。
#列表解包：將localtime()的返回值列表中的各個元素解包，分別賦值給變數$sec、$min、$hour、$mday、$mon、$year、$wday、$yday和$isdst。這樣就可以直接使用這些變數來表示相應的時間元素。
#sprintf()：這是Perl的另一個內建函式，用於根據指定的格式來將數值格式化為字串。在這裡，我們使用sprintf來將時間元素格式化為一個特定的字串格式。
#" %02d%02d%02d%02d%02d%02d"：這是格式化的字串模板。%02d表示使用2位數字，不足2位的地方補0。
#$year-100：在localtime()返回的$year中，表示的是自1900年開始到現在的年份，所以這裡將其減去100，以獲得兩位數的年份表示。
#$mon+1：在localtime()返回的$mon中，表示的是0到11的月份，所以這裡將其加1，以獲得1到12的月份表示。
#最終，$nowtime將包含格式化後的時間字串，格式為YYMMDDHHMMSS（年月日時分秒，兩位數表示）。

#注意：這個程式碼在某些情況下可能不夠準確，特別是在跨時區或需要更高精度的時間處理場景中。在這種情況下，可能需要使用CPAN上的模組來處理時間，例如DateTime模組。但對於一般的時間處理，上面的程式碼已經足夠使用。
