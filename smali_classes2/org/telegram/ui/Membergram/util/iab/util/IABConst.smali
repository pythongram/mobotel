.class public Lorg/telegram/ui/Membergram/util/iab/util/IABConst;
.super Ljava/lang/Object;
.source "IABConst.java"


# static fields
.field public static DEV_CODE:I

.field public static DEV_PAYLOAD:Ljava/lang/String;

.field public static PUB_KEY_RSA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    const-string v0, "MIHNMA0GCSqGSIb3DQEBAQUAA4G7ADCBtwKBrwCtIH516mK6a9irdOYPmZnm6QySsJP8KcV6cK3kqgM21sDyuamkurCszk192UMd3epYxx4CqJ5fIAvXrlfWbn/SgVU7DkgOlNS6O4WVwQU0UHh4iJXiSxqmZVOFh49SGKAmM6IPfjl9WblwWazg4Nr7FTiAgz2+0QC42cH/V7SNeYfg3nZY2v1n5ExT8yoZKVCuwmxkgDfYkRJM+jTcTPBifzrgLK4k+69QtU15dIECAwEAAQ=="

    sput-object v0, Lorg/telegram/ui/Membergram/util/iab/util/IABConst;->PUB_KEY_RSA:Ljava/lang/String;

    .line 8
    const/16 v0, 0x2711

    sput v0, Lorg/telegram/ui/Membergram/util/iab/util/IABConst;->DEV_CODE:I

    .line 9
    const-string v0, "bGoa+V7g/687weury89+JTFn4uQZbPiQJo4pf9RzJ"

    sput-object v0, Lorg/telegram/ui/Membergram/util/iab/util/IABConst;->DEV_PAYLOAD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
