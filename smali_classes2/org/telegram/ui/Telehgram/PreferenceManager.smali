.class public Lorg/telegram/ui/Telehgram/PreferenceManager;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# static fields
.field public static final ACCEPT_FLIRT_MSG:Ljava/lang/String; = "ACCEPT_FLIRT_MSG"

.field public static final ADBLOCKER_BLOCK_LINKS:Ljava/lang/String; = "ADBLOCKER_BLOCK_LINKS"

.field public static final APP_FIRST_OPEN_TIME:Ljava/lang/String; = "APP_FIRST_OPEN_TIME"

.field public static final APP_OPENED_COUNT:Ljava/lang/String; = "APP_OPENED_COUNT"

.field public static final APP_UPDATE_LINK:Ljava/lang/String; = "APP_UPDATE_LINK"

.field public static final APP_VERSION_IS_NOT_SUPPORTED:Ljava/lang/String; = "APP_VERSION_IS_NOT_SUPPORTED"

.field public static final BLOCK_RADAR_REQUESTS:Ljava/lang/String; = "BLOCK_RADAR_REQUESTS"

.field public static final CONFIRM_STICKER:Ljava/lang/String; = "CONFIRM_STICKER"

.field public static final CONFIRM_VOICE:Ljava/lang/String; = "CONFIRM_VOICE"

.field public static final DO_NOT_ASK_ME_FOR_RATING:Ljava/lang/String; = "DO_NOT_ASK_ME_FOR_5STAR"

.field public static final FIRST_TIME_ASKING_FOR_LOCATION_PERMISSION:Ljava/lang/String; = "FIRST_TIME_ASKING_FOR_LOCATION_PERMISSION"

.field public static final FONT:Ljava/lang/String; = "TeleTalkFont"

.field public static final FORWARDED_FROM_HOTS_HEADER:Ljava/lang/String; = "FORWARDED_FROM_HOTS_HEADER"

.field public static final HIDE_PHONE_NUMBER:Ljava/lang/String; = "Hide_Phone_Number"

.field public static final HIDE_TABS_ON_SCROLL:Ljava/lang/String; = "HIDE_TABS_ON_SCROLL"

.field public static final INVITED_GROUPS:Ljava/lang/String; = "INVITED_GROUPS"

.field public static final INVITED_USERS:Ljava/lang/String; = "INVITED_USERS"

.field public static final INVITE_RIBBON_TEXT:Ljava/lang/String; = "INVITE_RIBBON_TEXT"

.field public static final INVITE_USER_TEXT:Ljava/lang/String; = "INVITE_USER_TEXT"

.field public static final JOIN_TELETALK_CHANNEL_DIALOG_SHOWN:Ljava/lang/String; = "JOIN_TT_CH_DIALOG_SHOWN"

.field public static final LAST_CHECK_FOR_UPDATE_TIME:Ljava/lang/String; = "LAST_CHECK_FOR_UPDATE_TIME"

.field public static final LAST_PHONE_NUMBER:Ljava/lang/String; = "LAST_PHONE_NUMBER"

.field public static final NEARBY_OPENED_COUNT:Ljava/lang/String; = "NEARBY_ACTIVITY_OPENED"

.field public static final NEARBY_TERMS_ACCEPTED:Ljava/lang/String; = "NEARBY_TERMS_ACCEPTED"

.field public static final NEED_CHANGE_USER_NUMBER:Ljava/lang/String; = "NEED_CHANGE_USER_NUMBER"

.field public static final RATING_POSTPONE_TIME:Ljava/lang/String; = "GIVING_5STAR_POSTPONE_TIME"

.field public static final SHOW_AD_BLOCKED_TOAST:Ljava/lang/String; = "SHOW_AD_BLOCKED_TOAST"

.field public static final SHOW_BOOKMARK_GUIDE:Ljava/lang/String; = "SHOW_BOOKMARK_GUIDE"

.field public static final SHOW_BOTTOM_NAV_BAR:Ljava/lang/String; = "SHOW_BOTTOM_NAV_BAR"

.field public static final SHOW_FIRST_LAUNCH_GUIDE:Ljava/lang/String; = "SHOW_FIRST_LAUNCH_GUIDE"

.field public static final SHOW_GHOST_GUIDE:Ljava/lang/String; = "SHOW_GHOST_GUIDE"

.field public static final SHOW_INVITE_RIBBON:Ljava/lang/String; = "SHOW_INVITE_RIBBON"

.field public static final START_FLIRT_MSG:Ljava/lang/String; = "START_FLIRT_MSG"

.field public static final SURVEY_DIALOG_SHOWN:Ljava/lang/String; = "SURVEY_DIALOG_SHOWN"

.field public static final TO_BE_LOGGED_INVITES:Ljava/lang/String; = "TO_BE_LOGGED_INVITES"

.field public static final TRENDS_OPENED_COUNT:Ljava/lang/String; = "NEARBY_ACTIVITY_OPENED"

.field public static final UPDATE_DIALOG_SHOWN_FOR_VERSION:Ljava/lang/String; = "UPDATE_DIALOG_SHOWN_FOR_VERSION"

.field public static final USER_DATA_FIRSTNAME:Ljava/lang/String; = "USER_DATA_FIRSTNAME"

.field public static final USER_DATA_LASTNAME:Ljava/lang/String; = "USER_DATA_LASTNAME"

.field public static final USER_DATA_PHONE:Ljava/lang/String; = "USER_DATA_PHONE"

.field public static final USER_DATA_PROFILE_PHOTO_ID:Ljava/lang/String; = "USER_DATA_PROFILE_PHOTO_ID"

.field public static final USER_DATA_PROFILE_TELETALK_ID:Ljava/lang/String; = "USER_DATA_PROFILE_TELETALK_ID"

.field public static final USER_DATA_TELEGRAM_ID:Ljava/lang/String; = "USER_DATA_TELEGRAM_ID"

.field public static final USER_DATA_UPLOADED_AVATAR_TYPE:Ljava/lang/String; = "USER_DATA_UPLOADED_AVATAR_TYPE"

.field public static final USER_DATA_USERNAME:Ljava/lang/String; = "USER_DATA_USERNAME"

.field public static final USER_DATA_USER_ID:Ljava/lang/String; = "USER_DATA_USER_ID"

.field public static final USER_RATED_FOR_APP:Ljava/lang/String; = "USER_RATED_FOR_APP"

.field private static volatile instance:Lorg/telegram/ui/Telehgram/PreferenceManager; = null

.field public static final prefsName:Ljava/lang/String; = "mainconfig"


# instance fields
.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/Telehgram/PreferenceManager;->instance:Lorg/telegram/ui/Telehgram/PreferenceManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string v0, "mainconfig"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/PreferenceManager;->prefs:Landroid/content/SharedPreferences;

    .line 93
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/telegram/ui/Telehgram/PreferenceManager;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    sget-object v0, Lorg/telegram/ui/Telehgram/PreferenceManager;->instance:Lorg/telegram/ui/Telehgram/PreferenceManager;

    .line 63
    .local v0, "localInstance":Lorg/telegram/ui/Telehgram/PreferenceManager;
    if-nez v0, :cond_14

    .line 64
    const-class v6, Lorg/telegram/ui/Telehgram/PreferenceManager;

    monitor-enter v6

    .line 66
    :try_start_7
    sget-object v0, Lorg/telegram/ui/Telehgram/PreferenceManager;->instance:Lorg/telegram/ui/Telehgram/PreferenceManager;

    .line 67
    if-nez v0, :cond_13

    .line 68
    new-instance v1, Lorg/telegram/ui/Telehgram/PreferenceManager;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Telehgram/PreferenceManager;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_10} :catch_19
    .catchall {:try_start_7 .. :try_end_10} :catchall_1e

    .line 70
    .local v1, "localInstance2":Lorg/telegram/ui/Telehgram/PreferenceManager;
    :try_start_10
    sput-object v1, Lorg/telegram/ui/Telehgram/PreferenceManager;->instance:Lorg/telegram/ui/Telehgram/PreferenceManager;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_12} :catch_15
    .catchall {:try_start_10 .. :try_end_12} :catchall_1e

    .line 71
    move-object v0, v1

    .line 82
    .end local v1    # "localInstance2":Lorg/telegram/ui/Telehgram/PreferenceManager;
    :cond_13
    :goto_13
    :try_start_13
    monitor-exit v6
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_1e

    .line 84
    :cond_14
    return-object v0

    .line 72
    .restart local v1    # "localInstance2":Lorg/telegram/ui/Telehgram/PreferenceManager;
    :catch_15
    move-exception v2

    .line 73
    .local v2, "th":Ljava/lang/Throwable;
    move-object v3, v2

    .line 74
    .local v3, "th2":Ljava/lang/Throwable;
    move-object v0, v1

    .line 75
    :try_start_18
    throw v3
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_19} :catch_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_1e

    .line 78
    .end local v1    # "localInstance2":Lorg/telegram/ui/Telehgram/PreferenceManager;
    .end local v2    # "th":Ljava/lang/Throwable;
    .end local v3    # "th2":Ljava/lang/Throwable;
    :catch_19
    move-exception v4

    .line 79
    .local v4, "th3":Ljava/lang/Throwable;
    :try_start_1a
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_13

    .line 82
    .end local v4    # "th3":Ljava/lang/Throwable;
    :catchall_1e
    move-exception v5

    monitor-exit v6
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_1e

    throw v5
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 124
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/Telehgram/PreferenceManager;->instance:Lorg/telegram/ui/Telehgram/PreferenceManager;

    .line 125
    return-void
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Z

    .prologue
    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/PreferenceManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/PreferenceManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/PreferenceManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPrefs()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/PreferenceManager;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getPrefsEditor()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/PreferenceManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/PreferenceManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    .local p2, "defValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/PreferenceManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public saveBoolean(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/PreferenceManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    return-void
.end method
