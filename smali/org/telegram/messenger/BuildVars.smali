.class public Lorg/telegram/messenger/BuildVars;
.super Ljava/lang/Object;
.source "BuildVars.java"


# static fields
.field public static APP_HASH:Ljava/lang/String;

.field public static APP_ID:I

.field public static BING_SEARCH_KEY:Ljava/lang/String;

.field public static BUILD_VERSION:I

.field public static BUILD_VERSION_STRING:Ljava/lang/String;

.field public static DEBUG_PRIVATE_VERSION:Z

.field public static DEBUG_VERSION:Z

.field public static FOURSQUARE_API_ID:Ljava/lang/String;

.field public static FOURSQUARE_API_KEY:Ljava/lang/String;

.field public static FOURSQUARE_API_VERSION:Ljava/lang/String;

.field public static GCM_SENDER_ID:Ljava/lang/String;

.field public static HOCKEY_APP_HASH:Ljava/lang/String;

.field public static HOCKEY_APP_HASH_DEBUG:Ljava/lang/String;

.field public static SEND_LOGS_EMAIL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 12
    sput-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    .line 13
    sput-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    .line 14
    const/16 v0, 0x3bd

    sput v0, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION:I

    .line 15
    const-string v0, "3.18"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    .line 16
    const v0, 0x896e

    sput v0, Lorg/telegram/messenger/BuildVars;->APP_ID:I

    .line 18
    const-string v0, "7839905dadfef7f0f56378df14e49eb7"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->APP_HASH:Ljava/lang/String;

    .line 20
    const-string v0, "7839905dadfef7f0f56378df14e49eb7"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH:Ljava/lang/String;

    .line 21
    const-string v0, "7839905dadfef7f0f56378df14e49eb7"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH_DEBUG:Ljava/lang/String;

    .line 22
    const-string v0, "760348033672"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->GCM_SENDER_ID:Ljava/lang/String;

    .line 23
    const-string v0, "email@gmail.com"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->SEND_LOGS_EMAIL:Ljava/lang/String;

    .line 24
    const-string v0, ""

    sput-object v0, Lorg/telegram/messenger/BuildVars;->BING_SEARCH_KEY:Ljava/lang/String;

    .line 25
    const-string v0, ""

    sput-object v0, Lorg/telegram/messenger/BuildVars;->FOURSQUARE_API_KEY:Ljava/lang/String;

    .line 26
    const-string v0, ""

    sput-object v0, Lorg/telegram/messenger/BuildVars;->FOURSQUARE_API_ID:Ljava/lang/String;

    .line 27
    const-string v0, "20150326"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->FOURSQUARE_API_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
