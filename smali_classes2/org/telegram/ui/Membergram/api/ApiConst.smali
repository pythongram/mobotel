.class public Lorg/telegram/ui/Membergram/api/ApiConst;
.super Ljava/lang/Object;
.source "ApiConst.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Membergram/api/ApiConst$SimpleCrypto;
    }
.end annotation


# static fields
.field public static final BASE:Ljava/lang/String; = "41EBF515534D7DC1A8569B8470DCEDFDAAFB0D5656BAA8A2BF8656D35E7D7A7C5D1C09CB9F2463478FBD3DBEBD586C0CA3B09FCEEE966AE79004677A949A2364"

.field public static final FAQ1:Ljava/lang/String; = "question/listquestion"

.field public static final GET_CHANNEL1:Ljava/lang/String; = "channel/channellist"

.field public static final GET_COIN1:Ljava/lang/String; = "user/getcoin"

.field public static final GET_DAILY_COIN1:Ljava/lang/String; = "user/addcoin"

.field public static final GET_MEMBER_COIN:Ljava/lang/String; = "coins/listcoin"

.field public static final GET_USER_CHANNEL_LIST1:Ljava/lang/String; = "channel/getchanneluserlist"

.field public static final INSER_NEW_CHANNEL1:Ljava/lang/String; = "channel/insert"

.field public static final JOIN_CHANNEL1:Ljava/lang/String; = "channel/channeljoineduser"

.field public static final JOIN_CHANNEL_LIST1:Ljava/lang/String; = "channel/getchanneljoineduserlist"

.field public static final LEAVE_CHANNEL1:Ljava/lang/String; = "channel/channellefteduser"

.field public static final PRICE_LIST1:Ljava/lang/String; = "prices/listprice"

.field public static final PURCHASE_CONSUME1:Ljava/lang/String; = "peyment/consumpeyment"

.field public static final PURCHASE_INSERT1:Ljava/lang/String; = "peyment/insertpeyment"

.field public static final REGISTER1:Ljava/lang/String; = "user/register"

.field public static final REPORT_CHANNEL1:Ljava/lang/String; = "channel/channelreport"

.field public static debug:Ljava/lang/Boolean;

.field public static tempUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Membergram/api/ApiConst;->debug:Ljava/lang/Boolean;

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/Membergram/api/ApiConst;->tempUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findBaseUrl(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    sget-object v1, Lorg/telegram/ui/Membergram/api/ApiConst;->tempUrl:Ljava/lang/String;

    if-nez v1, :cond_17

    .line 46
    :try_start_4
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x7

    new-array v2, v2, [C

    fill-array-data v2, :array_20

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    const-string v2, "41EBF515534D7DC1A8569B8470DCEDFDAAFB0D5656BAA8A2BF8656D35E7D7A7C5D1C09CB9F2463478FBD3DBEBD586C0CA3B09FCEEE966AE79004677A949A2364"

    invoke-static {v1, v2}, Lorg/telegram/ui/Membergram/api/ApiConst$SimpleCrypto;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/telegram/ui/Membergram/api/ApiConst;->tempUrl:Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_1a

    .line 55
    :cond_17
    :goto_17
    sget-object v1, Lorg/telegram/ui/Membergram/api/ApiConst;->tempUrl:Ljava/lang/String;

    return-object v1

    .line 51
    :catch_1a
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/ui/Membergram/analytics/ExceptionHandler;->changeTempUrl(Ljava/lang/Exception;)V

    goto :goto_17

    .line 46
    nop

    :array_20
    .array-data 2
        0x78s
        0x69s
        0x73s
        0x75s
        0x65s
        0x62s
        0x68s
    .end array-data
.end method

.method public static getFullUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lorg/telegram/ui/Membergram/api/ApiConst;->findBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
