.class public Lorg/telegram/messenger/NotificationsController;
.super Ljava/lang/Object;
.source "NotificationsController.java"


# static fields
.field public static final EXTRA_VOICE_REPLY:Ljava/lang/String; = "extra_voice_reply"

.field private static volatile Instance:Lorg/telegram/messenger/NotificationsController;

.field public static listofdialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private alarmManager:Landroid/app/AlarmManager;

.field protected audioManager:Landroid/media/AudioManager;

.field private delayedPushMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private inChatSoundEnabled:Z

.field private lastBadgeCount:I

.field private lastOnlineFromOtherDevice:I

.field private lastSoundOutPlay:J

.field private lastSoundPlay:J

.field private launcherClassName:Ljava/lang/String;

.field private notificationDelayRunnable:Ljava/lang/Runnable;

.field private notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;

.field private notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

.field private notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

.field private notifyCheck:Z

.field private opened_dialog_id:J

.field private personal_count:I

.field public popupMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public popupReplyMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private pushDialogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pushDialogsOverrideMention:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pushMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private pushMessagesDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private smartNotificationsDialogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private soundIn:I

.field private soundInLoaded:Z

.field private soundOut:I

.field private soundOutLoaded:Z

.field private soundPool:Landroid/media/SoundPool;

.field private soundRecord:I

.field private soundRecordLoaded:Z

.field private total_unread_count:I

.field private wearNotificationsIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/NotificationsController;->listofdialogs:Ljava/util/ArrayList;

    .line 87
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/NotificationsController;->Instance:Lorg/telegram/messenger/NotificationsController;

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v3, Lorg/telegram/messenger/DispatchQueue;

    const-string v4, "notificationsQueue"

    invoke-direct {v3, v4}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 53
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    .line 54
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    .line 55
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Ljava/util/HashMap;

    .line 56
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->smartNotificationsDialogs:Ljava/util/HashMap;

    .line 57
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    .line 58
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;

    .line 59
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Ljava/util/HashMap;

    .line 60
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Ljava/util/HashMap;

    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    .line 62
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->popupReplyMessages:Ljava/util/ArrayList;

    .line 63
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/telegram/messenger/NotificationsController;->opened_dialog_id:J

    .line 64
    iput v6, p0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 65
    iput v6, p0, Lorg/telegram/messenger/NotificationsController;->personal_count:I

    .line 66
    iput-boolean v6, p0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    .line 67
    iput v6, p0, Lorg/telegram/messenger/NotificationsController;->lastOnlineFromOtherDevice:I

    .line 68
    iput-boolean v7, p0, Lorg/telegram/messenger/NotificationsController;->inChatSoundEnabled:Z

    .line 69
    const/4 v3, -0x1

    iput v3, p0, Lorg/telegram/messenger/NotificationsController;->lastBadgeCount:I

    .line 102
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    .line 103
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "Notifications"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 104
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "EnableInChatSound"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lorg/telegram/messenger/NotificationsController;->inChatSoundEnabled:Z

    .line 107
    :try_start_79
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_85} :catch_b2

    .line 112
    :goto_85
    :try_start_85
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->alarmManager:Landroid/app/AlarmManager;
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_91} :catch_b7

    .line 118
    :goto_91
    :try_start_91
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 119
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "lock"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;

    .line 120
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_aa} :catch_bc

    .line 125
    .end local v1    # "pm":Landroid/os/PowerManager;
    :goto_aa
    new-instance v3, Lorg/telegram/messenger/NotificationsController$1;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/NotificationsController$1;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayRunnable:Ljava/lang/Runnable;

    .line 142
    return-void

    .line 108
    :catch_b2
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_85

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_b7
    move-exception v0

    .line 114
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_91

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_bc
    move-exception v0

    .line 122
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_aa
.end method

.method static synthetic access$000(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/NotificationsController;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/NotificationsController;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 47
    iget-boolean v0, p0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    return v0
.end method

.method static synthetic access$1002(Lorg/telegram/messenger/NotificationsController;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/NotificationsController;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->lastBadgeCount:I

    return v0
.end method

.method static synthetic access$1102(Lorg/telegram/messenger/NotificationsController;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->lastBadgeCount:I

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/NotificationsController;I)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationsController;->setBadge(I)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/NotificationsController;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->lastOnlineFromOtherDevice:I

    return v0
.end method

.method static synthetic access$1302(Lorg/telegram/messenger/NotificationsController;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->lastOnlineFromOtherDevice:I

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/NotificationsController;)Landroid/support/v4/app/NotificationManagerCompat;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/NotificationsController;Lorg/telegram/messenger/MessageObject;)Z
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationsController;->isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->smartNotificationsDialogs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/NotificationsController;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationsController;->scheduleNotificationDelay(Z)V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/NotificationsController;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsController;->playInChatSound()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/NotificationsController;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/NotificationsController;Landroid/content/SharedPreferences;J)I
    .registers 6
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # Landroid/content/SharedPreferences;
    .param p2, "x2"    # J

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/messenger/NotificationsController;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/telegram/messenger/NotificationsController;->lastSoundPlay:J

    return-wide v0
.end method

.method static synthetic access$2200(Lorg/telegram/messenger/NotificationsController;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->soundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$2202(Lorg/telegram/messenger/NotificationsController;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->soundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$2300(Lorg/telegram/messenger/NotificationsController;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->soundIn:I

    return v0
.end method

.method static synthetic access$2302(Lorg/telegram/messenger/NotificationsController;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->soundIn:I

    return p1
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/NotificationsController;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 47
    iget-boolean v0, p0, Lorg/telegram/messenger/NotificationsController;->soundInLoaded:Z

    return v0
.end method

.method static synthetic access$2402(Lorg/telegram/messenger/NotificationsController;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lorg/telegram/messenger/NotificationsController;->soundInLoaded:Z

    return p1
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/NotificationsController;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsController;->scheduleNotificationRepeat()V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/NotificationsController;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/telegram/messenger/NotificationsController;->lastSoundOutPlay:J

    return-wide v0
.end method

.method static synthetic access$2602(Lorg/telegram/messenger/NotificationsController;J)J
    .registers 4
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # J

    .prologue
    .line 47
    iput-wide p1, p0, Lorg/telegram/messenger/NotificationsController;->lastSoundOutPlay:J

    return-wide p1
.end method

.method static synthetic access$2700(Lorg/telegram/messenger/NotificationsController;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->soundOut:I

    return v0
.end method

.method static synthetic access$2702(Lorg/telegram/messenger/NotificationsController;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->soundOut:I

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/messenger/NotificationsController;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 47
    iget-boolean v0, p0, Lorg/telegram/messenger/NotificationsController;->soundOutLoaded:Z

    return v0
.end method

.method static synthetic access$2802(Lorg/telegram/messenger/NotificationsController;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lorg/telegram/messenger/NotificationsController;->soundOutLoaded:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/messenger/NotificationsController;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/telegram/messenger/NotificationsController;->opened_dialog_id:J

    return-wide v0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/NotificationsController;J)J
    .registers 4
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # J

    .prologue
    .line 47
    iput-wide p1, p0, Lorg/telegram/messenger/NotificationsController;->opened_dialog_id:J

    return-wide p1
.end method

.method static synthetic access$400(Lorg/telegram/messenger/NotificationsController;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/messenger/NotificationsController;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    return p1
.end method

.method static synthetic access$502(Lorg/telegram/messenger/NotificationsController;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->personal_count:I

    return p1
.end method

.method static synthetic access$508(Lorg/telegram/messenger/NotificationsController;)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->personal_count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/NotificationsController;->personal_count:I

    return v0
.end method

.method static synthetic access$510(Lorg/telegram/messenger/NotificationsController;)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->personal_count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/NotificationsController;->personal_count:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Ljava/util/HashMap;

    return-object v0
.end method

.method private dismissNotification()V
    .registers 6

    .prologue
    .line 1378
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(I)V

    .line 1379
    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1380
    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1381
    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1382
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(I)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    goto :goto_1a

    .line 1391
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :catch_36
    move-exception v0

    .line 1392
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1394
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3a
    return-void

    .line 1384
    :cond_3b
    :try_start_3b
    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1385
    new-instance v2, Lorg/telegram/messenger/NotificationsController$13;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/NotificationsController$13;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_48} :catch_36

    goto :goto_3a
.end method

.method public static getInstance()Lorg/telegram/messenger/NotificationsController;
    .registers 4

    .prologue
    .line 89
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->Instance:Lorg/telegram/messenger/NotificationsController;

    .line 90
    .local v0, "localInstance":Lorg/telegram/messenger/NotificationsController;
    if-nez v0, :cond_14

    .line 91
    const-class v3, Lorg/telegram/messenger/NotificationsController;

    monitor-enter v3

    .line 92
    :try_start_7
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->Instance:Lorg/telegram/messenger/NotificationsController;

    .line 93
    if-nez v0, :cond_13

    .line 94
    new-instance v1, Lorg/telegram/messenger/NotificationsController;

    invoke-direct {v1}, Lorg/telegram/messenger/NotificationsController;-><init>()V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_15

    .end local v0    # "localInstance":Lorg/telegram/messenger/NotificationsController;
    .local v1, "localInstance":Lorg/telegram/messenger/NotificationsController;
    :try_start_10
    sput-object v1, Lorg/telegram/messenger/NotificationsController;->Instance:Lorg/telegram/messenger/NotificationsController;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_18

    move-object v0, v1

    .line 96
    .end local v1    # "localInstance":Lorg/telegram/messenger/NotificationsController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/NotificationsController;
    :cond_13
    :try_start_13
    monitor-exit v3

    .line 98
    :cond_14
    return-object v0

    .line 96
    :catchall_15
    move-exception v2

    :goto_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/NotificationsController;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/NotificationsController;
    :catchall_18
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/NotificationsController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/NotificationsController;
    goto :goto_16
.end method

.method private getNotifyOverride(Landroid/content/SharedPreferences;J)I
    .registers 10
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
    .param p2, "dialog_id"    # J

    .prologue
    const/4 v4, 0x0

    .line 1366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify2_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1367
    .local v1, "notifyOverride":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3d

    .line 1368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyuntil_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1369
    .local v0, "muteUntil":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    if-lt v0, v2, :cond_3d

    .line 1370
    const/4 v1, 0x2

    .line 1373
    .end local v0    # "muteUntil":I
    :cond_3d
    return v1
.end method

.method private getStringForMessage(Lorg/telegram/messenger/MessageObject;Z)Ljava/lang/String;
    .registers 35
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "shortMessage"    # Z

    .prologue
    .line 844
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 845
    .local v8, "dialog_id":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v23, v0

    if-eqz v23, :cond_7d

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    .line 846
    .local v6, "chat_id":I
    :goto_2e
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 847
    .local v11, "from_id":I
    if-nez v11, :cond_90

    .line 848
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v23

    if-nez v23, :cond_4c

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v23

    if-gez v23, :cond_8e

    .line 849
    :cond_4c
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 857
    :cond_56
    :goto_56
    const-wide/16 v24, 0x0

    cmp-long v23, v8, v24

    if-nez v23, :cond_64

    .line 858
    if-eqz v6, :cond_a3

    .line 859
    neg-int v0, v6

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v8, v0

    .line 865
    :cond_64
    :goto_64
    const/4 v14, 0x0

    .line 866
    .local v14, "name":Ljava/lang/String;
    if-lez v11, :cond_a7

    .line 867
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v22

    .line 868
    .local v22, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v22, :cond_79

    .line 869
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v14

    .line 878
    .end local v22    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_79
    :goto_79
    if-nez v14, :cond_bb

    .line 879
    const/4 v13, 0x0

    .line 1342
    :cond_7c
    :goto_7c
    return-object v13

    .line 845
    .end local v6    # "chat_id":I
    .end local v11    # "from_id":I
    .end local v14    # "name":Ljava/lang/String;
    :cond_7d
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    goto :goto_2e

    .line 851
    .restart local v6    # "chat_id":I
    .restart local v11    # "from_id":I
    :cond_8e
    neg-int v11, v6

    goto :goto_56

    .line 853
    :cond_90
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v23

    move/from16 v0, v23

    if-ne v11, v0, :cond_56

    .line 854
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    goto :goto_56

    .line 860
    :cond_a3
    if-eqz v11, :cond_64

    .line 861
    int-to-long v8, v11

    goto :goto_64

    .line 872
    .restart local v14    # "name":Ljava/lang/String;
    :cond_a7
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    neg-int v0, v11

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    .line 873
    .local v5, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v5, :cond_79

    .line 874
    iget-object v14, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_79

    .line 881
    .end local v5    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_bb
    const/4 v5, 0x0

    .line 882
    .restart local v5    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v6, :cond_ce

    .line 883
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    .line 884
    if-nez v5, :cond_ce

    .line 885
    const/4 v13, 0x0

    goto :goto_7c

    .line 889
    :cond_ce
    const/4 v13, 0x0

    .line 890
    .local v13, "msg":Ljava/lang/String;
    long-to-int v0, v8

    move/from16 v23, v0

    if-eqz v23, :cond_e0

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v23

    if-nez v23, :cond_e0

    sget-boolean v23, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    if-eqz v23, :cond_ea

    .line 891
    :cond_e0
    const-string v23, "YouHaveNewMessage"

    const v24, 0x7f0705bf

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_7c

    .line 893
    :cond_ea
    if-nez v6, :cond_672

    if-eqz v11, :cond_672

    .line 894
    sget-object v23, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v24, "Notifications"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 895
    .local v18, "preferences":Landroid/content/SharedPreferences;
    const-string v23, "EnablePreviewAll"

    const/16 v24, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-eqz v23, :cond_65b

    .line 896
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move/from16 v23, v0

    if-eqz v23, :cond_2a3

    .line 897
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;

    move/from16 v23, v0

    if-eqz v23, :cond_141

    .line 898
    const-string v23, "NotificationContactJoined"

    const v24, 0x7f070393

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 899
    :cond_141
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    move/from16 v23, v0

    if-eqz v23, :cond_16c

    .line 900
    const-string v23, "NotificationContactNewPhoto"

    const v24, 0x7f070394

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 901
    :cond_16c
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionLoginUnknownLocation;

    move/from16 v23, v0

    if-eqz v23, :cond_230

    .line 902
    const-string v23, "formatDateAtTime"

    const v24, 0x7f0705d1

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x3e8

    mul-long v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x3e8

    mul-long v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 903
    .local v7, "date":Ljava/lang/String;
    const-string v23, "NotificationUnrecognizedDevice"

    const v24, 0x7f0703ba

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x1

    aput-object v7, v25, v26

    const/16 v26, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x3

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->address:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 904
    goto/16 :goto_7c

    .end local v7    # "date":Ljava/lang/String;
    :cond_230
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGameScore;

    move/from16 v23, v0

    if-nez v23, :cond_258

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent;

    move/from16 v23, v0

    if-eqz v23, :cond_264

    .line 905
    :cond_258
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 906
    :cond_264
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;

    move/from16 v23, v0

    if-eqz v23, :cond_7c

    .line 907
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    move-object/from16 v19, v0

    .line 908
    .local v19, "reason":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v23

    if-nez v23, :cond_7c

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;

    move/from16 v23, v0

    if-eqz v23, :cond_7c

    .line 909
    const-string v23, "CallMessageIncomingMissed"

    const v24, 0x7f0700f3

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 913
    .end local v19    # "reason":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    :cond_2a3
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v23

    if-eqz v23, :cond_320

    .line 914
    if-nez p2, :cond_309

    .line 915
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2f2

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_2f2

    .line 916
    const-string v23, "NotificationMessageText"

    const v24, 0x7f0703b7

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 918
    :cond_2f2
    const-string v23, "NotificationMessageNoText"

    const v24, 0x7f0703b3

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 921
    :cond_309
    const-string v23, "NotificationMessageNoText"

    const v24, 0x7f0703b3

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 923
    :cond_320
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    move/from16 v23, v0

    if-eqz v23, :cond_3af

    .line 924
    if-nez p2, :cond_398

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_398

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_398

    .line 925
    const-string v23, "NotificationMessageText"

    const v24, 0x7f0703b7

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "\ud83d\uddbc "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 927
    :cond_398
    const-string v23, "NotificationMessagePhoto"

    const v24, 0x7f0703b4

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 929
    :cond_3af
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v23

    if-eqz v23, :cond_430

    .line 930
    if-nez p2, :cond_419

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_419

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_419

    .line 931
    const-string v23, "NotificationMessageText"

    const v24, 0x7f0703b7

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "\ud83d\udcf9 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 933
    :cond_419
    const-string v23, "NotificationMessageVideo"

    const v24, 0x7f0703b8

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 935
    :cond_430
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isGame()Z

    move-result v23

    if-eqz v23, :cond_469

    .line 936
    const-string v23, "NotificationMessageGame"

    const v24, 0x7f0703a2

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 937
    :cond_469
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v23

    if-eqz v23, :cond_486

    .line 938
    const-string v23, "NotificationMessageAudio"

    const v24, 0x7f07039f

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 939
    :cond_486
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v23

    if-eqz v23, :cond_4a3

    .line 940
    const-string v23, "NotificationMessageMusic"

    const v24, 0x7f0703b2

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 941
    :cond_4a3
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    move/from16 v23, v0

    if-eqz v23, :cond_4ce

    .line 942
    const-string v23, "NotificationMessageContact"

    const v24, 0x7f0703a0

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 943
    :cond_4ce
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    move/from16 v23, v0

    if-nez v23, :cond_4f6

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    move/from16 v23, v0

    if-eqz v23, :cond_50d

    .line 944
    :cond_4f6
    const-string v23, "NotificationMessageMap"

    const v24, 0x7f0703b1

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 945
    :cond_50d
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v23, v0

    if-eqz v23, :cond_7c

    .line 946
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v23

    if-eqz v23, :cond_55f

    .line 947
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v10

    .line 948
    .local v10, "emoji":Ljava/lang/String;
    if-eqz v10, :cond_548

    .line 949
    const-string v23, "NotificationMessageStickerEmoji"

    const v24, 0x7f0703b6

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    aput-object v10, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 951
    :cond_548
    const-string v23, "NotificationMessageSticker"

    const v24, 0x7f0703b5

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 953
    .end local v10    # "emoji":Ljava/lang/String;
    :cond_55f
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v23

    if-eqz v23, :cond_5e0

    .line 954
    if-nez p2, :cond_5c9

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_5c9

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_5c9

    .line 955
    const-string v23, "NotificationMessageText"

    const v24, 0x7f0703b7

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "\ud83c\udfac "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 957
    :cond_5c9
    const-string v23, "NotificationMessageGif"

    const v24, 0x7f0703a3

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 960
    :cond_5e0
    if-nez p2, :cond_644

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_644

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_644

    .line 961
    const-string v23, "NotificationMessageText"

    const v24, 0x7f0703b7

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "\ud83d\udcce "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 963
    :cond_644
    const-string v23, "NotificationMessageDocument"

    const v24, 0x7f0703a1

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 969
    :cond_65b
    const-string v23, "NotificationMessageNoText"

    const v24, 0x7f0703b3

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 971
    .end local v18    # "preferences":Landroid/content/SharedPreferences;
    :cond_672
    if-eqz v6, :cond_7c

    .line 972
    sget-object v23, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v24, "Notifications"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 973
    .restart local v18    # "preferences":Landroid/content/SharedPreferences;
    const-string v23, "EnablePreviewGroup"

    const/16 v24, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-eqz v23, :cond_1dce

    .line 974
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move/from16 v23, v0

    if-eqz v23, :cond_122d

    .line 975
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    move/from16 v23, v0

    if-eqz v23, :cond_87a

    .line 976
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move/from16 v20, v0

    .line 977
    .local v20, "singleUserId":I
    if-nez v20, :cond_700

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_700

    .line 978
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 980
    :cond_700
    if-eqz v20, :cond_7ea

    .line 981
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v23, v0

    if-eqz v23, :cond_73b

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-nez v23, :cond_73b

    .line 982
    const-string v23, "ChannelAddedByNotification"

    const v24, 0x7f070113

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 984
    :cond_73b
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v23

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_764

    .line 985
    const-string v23, "NotificationInvitedToGroup"

    const v24, 0x7f07039d

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 987
    :cond_764
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v21

    .line 988
    .local v21, "u2":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v21, :cond_775

    .line 989
    const/4 v13, 0x0

    goto/16 :goto_7c

    .line 991
    :cond_775
    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v11, v0, :cond_7c3

    .line 992
    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_7a4

    .line 993
    const-string v23, "NotificationGroupAddSelfMega"

    const v24, 0x7f070399

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 995
    :cond_7a4
    const-string v23, "NotificationGroupAddSelf"

    const v24, 0x7f070398

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 998
    :cond_7c3
    const-string v23, "NotificationGroupAddMember"

    const v24, 0x7f070397

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1003
    .end local v21    # "u2":Lorg/telegram/tgnet/TLRPC$User;
    :cond_7ea
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v23, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1004
    .local v16, "names":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_7f6
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v4, v0, :cond_853

    .line 1005
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v22

    .line 1006
    .restart local v22    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v22, :cond_850

    .line 1007
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v15

    .line 1008
    .local v15, "name2":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v23

    if-eqz v23, :cond_84b

    .line 1009
    const-string v23, ", "

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    :cond_84b
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    .end local v15    # "name2":Ljava/lang/String;
    :cond_850
    add-int/lit8 v4, v4, 0x1

    goto :goto_7f6

    .line 1014
    .end local v22    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_853
    const-string v23, "NotificationGroupAddMember"

    const v24, 0x7f070397

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1016
    .end local v4    # "a":I
    .end local v16    # "names":Ljava/lang/StringBuilder;
    .end local v20    # "singleUserId":I
    :cond_87a
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByLink;

    move/from16 v23, v0

    if-eqz v23, :cond_8ad

    .line 1017
    const-string v23, "NotificationInvitedToGroupByLink"

    const v24, 0x7f07039e

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1018
    :cond_8ad
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditTitle;

    move/from16 v23, v0

    if-eqz v23, :cond_8ee

    .line 1019
    const-string v23, "NotificationEditedGroupName"

    const v24, 0x7f070395

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1020
    :cond_8ee
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;

    move/from16 v23, v0

    if-nez v23, :cond_916

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeletePhoto;

    move/from16 v23, v0

    if-eqz v23, :cond_96a

    .line 1021
    :cond_916
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v23, v0

    if-eqz v23, :cond_94b

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-nez v23, :cond_94b

    .line 1022
    const-string v23, "ChannelPhotoEditNotification"

    const v24, 0x7f07014c

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1024
    :cond_94b
    const-string v23, "NotificationEditedGroupPhoto"

    const v24, 0x7f070396

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1026
    :cond_96a
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;

    move/from16 v23, v0

    if-eqz v23, :cond_a38

    .line 1027
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move/from16 v23, v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9b9

    .line 1028
    const-string v23, "NotificationGroupKickYou"

    const v24, 0x7f07039b

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1029
    :cond_9b9
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v0, v11, :cond_9ee

    .line 1030
    const-string v23, "NotificationGroupLeftMember"

    const v24, 0x7f07039c

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1032
    :cond_9ee
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v21

    .line 1033
    .restart local v21    # "u2":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v21, :cond_a11

    .line 1034
    const/4 v13, 0x0

    goto/16 :goto_7c

    .line 1036
    :cond_a11
    const-string v23, "NotificationGroupKickMember"

    const v24, 0x7f07039a

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1037
    goto/16 :goto_7c

    .line 1038
    .end local v21    # "u2":Lorg/telegram/tgnet/TLRPC$User;
    :cond_a38
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatCreate;

    move/from16 v23, v0

    if-eqz v23, :cond_a58

    .line 1039
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1040
    :cond_a58
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    move/from16 v23, v0

    if-eqz v23, :cond_a78

    .line 1041
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1042
    :cond_a78
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    move/from16 v23, v0

    if-eqz v23, :cond_aa7

    .line 1043
    const-string v23, "ActionMigrateFromGroupNotify"

    const v24, 0x7f070049

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1044
    :cond_aa7
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom;

    move/from16 v23, v0

    if-eqz v23, :cond_ae4

    .line 1045
    const-string v23, "ActionMigrateFromGroupNotify"

    const v24, 0x7f070049

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1046
    :cond_ae4
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    move/from16 v23, v0

    if-eqz v23, :cond_120d

    .line 1047
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v23, v0

    if-nez v23, :cond_b4a

    .line 1048
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_b0c

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_b2b

    .line 1049
    :cond_b0c
    const-string v23, "NotificationActionPinnedNoText"

    const v24, 0x7f070385

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1051
    :cond_b2b
    const-string v23, "NotificationActionPinnedNoTextChannel"

    const v24, 0x7f070386

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1054
    :cond_b4a
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v17, v0

    .line 1055
    .local v17, "object":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v23

    if-eqz v23, :cond_b9c

    .line 1056
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_b62

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_b81

    .line 1057
    :cond_b62
    const-string v23, "NotificationActionPinnedMusic"

    const v24, 0x7f070383

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1059
    :cond_b81
    const-string v23, "NotificationActionPinnedMusicChannel"

    const v24, 0x7f070384

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1061
    :cond_b9c
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v23

    if-eqz v23, :cond_c7d

    .line 1062
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_c37

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_c37

    .line 1063
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "\ud83d\udcf9 "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1064
    .local v12, "message":Ljava/lang/String;
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_bf5

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_c18

    .line 1065
    :cond_bf5
    const-string v23, "NotificationActionPinnedText"

    const v24, 0x7f07038d

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    aput-object v12, v25, v26

    const/16 v26, 0x2

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1067
    :cond_c18
    const-string v23, "NotificationActionPinnedTextChannel"

    const v24, 0x7f07038e

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x1

    aput-object v12, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1070
    .end local v12    # "message":Ljava/lang/String;
    :cond_c37
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_c43

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_c62

    .line 1071
    :cond_c43
    const-string v23, "NotificationActionPinnedVideo"

    const v24, 0x7f07038f

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1073
    :cond_c62
    const-string v23, "NotificationActionPinnedVideoChannel"

    const v24, 0x7f070390

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1076
    :cond_c7d
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v23

    if-eqz v23, :cond_d5e

    .line 1077
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_d18

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_d18

    .line 1078
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "\ud83c\udfac "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1079
    .restart local v12    # "message":Ljava/lang/String;
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_cd6

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_cf9

    .line 1080
    :cond_cd6
    const-string v23, "NotificationActionPinnedText"

    const v24, 0x7f07038d

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    aput-object v12, v25, v26

    const/16 v26, 0x2

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1082
    :cond_cf9
    const-string v23, "NotificationActionPinnedTextChannel"

    const v24, 0x7f07038e

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x1

    aput-object v12, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1085
    .end local v12    # "message":Ljava/lang/String;
    :cond_d18
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_d24

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_d43

    .line 1086
    :cond_d24
    const-string v23, "NotificationActionPinnedGif"

    const v24, 0x7f070381

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1088
    :cond_d43
    const-string v23, "NotificationActionPinnedGifChannel"

    const v24, 0x7f070382

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1091
    :cond_d5e
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v23

    if-eqz v23, :cond_daa

    .line 1092
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_d70

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_d8f

    .line 1093
    :cond_d70
    const-string v23, "NotificationActionPinnedVoice"

    const v24, 0x7f070391

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1095
    :cond_d8f
    const-string v23, "NotificationActionPinnedVoiceChannel"

    const v24, 0x7f070392

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1097
    :cond_daa
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v23

    if-eqz v23, :cond_e4a

    .line 1098
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v10

    .line 1099
    .restart local v10    # "emoji":Ljava/lang/String;
    if-eqz v10, :cond_e04

    .line 1100
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_dc2

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_de5

    .line 1101
    :cond_dc2
    const-string v23, "NotificationActionPinnedStickerEmoji"

    const v24, 0x7f07038b

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    aput-object v10, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1103
    :cond_de5
    const-string v23, "NotificationActionPinnedStickerEmojiChannel"

    const v24, 0x7f07038c

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x1

    aput-object v10, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1106
    :cond_e04
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_e10

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_e2f

    .line 1107
    :cond_e10
    const-string v23, "NotificationActionPinnedSticker"

    const v24, 0x7f070389

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1109
    :cond_e2f
    const-string v23, "NotificationActionPinnedStickerChannel"

    const v24, 0x7f07038a

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1112
    .end local v10    # "emoji":Ljava/lang/String;
    :cond_e4a
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v23, v0

    if-eqz v23, :cond_f39

    .line 1113
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_ef3

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_ef3

    .line 1114
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "\ud83d\udcce "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1115
    .restart local v12    # "message":Ljava/lang/String;
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_eb1

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_ed4

    .line 1116
    :cond_eb1
    const-string v23, "NotificationActionPinnedText"

    const v24, 0x7f07038d

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    aput-object v12, v25, v26

    const/16 v26, 0x2

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1118
    :cond_ed4
    const-string v23, "NotificationActionPinnedTextChannel"

    const v24, 0x7f07038e

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x1

    aput-object v12, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1121
    .end local v12    # "message":Ljava/lang/String;
    :cond_ef3
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_eff

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_f1e

    .line 1122
    :cond_eff
    const-string v23, "NotificationActionPinnedFile"

    const v24, 0x7f07037b

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1124
    :cond_f1e
    const-string v23, "NotificationActionPinnedFileChannel"

    const v24, 0x7f07037c

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1127
    :cond_f39
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    move/from16 v23, v0

    if-eqz v23, :cond_f93

    .line 1128
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_f59

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_f78

    .line 1129
    :cond_f59
    const-string v23, "NotificationActionPinnedGeo"

    const v24, 0x7f07037f

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1131
    :cond_f78
    const-string v23, "NotificationActionPinnedGeoChannel"

    const v24, 0x7f070380

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1133
    :cond_f93
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    move/from16 v23, v0

    if-eqz v23, :cond_fed

    .line 1134
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_fb3

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_fd2

    .line 1135
    :cond_fb3
    const-string v23, "NotificationActionPinnedContact"

    const v24, 0x7f070379

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1137
    :cond_fd2
    const-string v23, "NotificationActionPinnedContactChannel"

    const v24, 0x7f07037a

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1139
    :cond_fed
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    move/from16 v23, v0

    if-eqz v23, :cond_10dc

    .line 1140
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_1096

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1096

    .line 1141
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "\ud83d\uddbc "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1142
    .restart local v12    # "message":Ljava/lang/String;
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_1054

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1077

    .line 1143
    :cond_1054
    const-string v23, "NotificationActionPinnedText"

    const v24, 0x7f07038d

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    aput-object v12, v25, v26

    const/16 v26, 0x2

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1145
    :cond_1077
    const-string v23, "NotificationActionPinnedTextChannel"

    const v24, 0x7f07038e

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x1

    aput-object v12, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1148
    .end local v12    # "message":Ljava/lang/String;
    :cond_1096
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_10a2

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_10c1

    .line 1149
    :cond_10a2
    const-string v23, "NotificationActionPinnedPhoto"

    const v24, 0x7f070387

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1151
    :cond_10c1
    const-string v23, "NotificationActionPinnedPhotoChannel"

    const v24, 0x7f070388

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1154
    :cond_10dc
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    move/from16 v23, v0

    if-eqz v23, :cond_1136

    .line 1155
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_10fc

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_111b

    .line 1156
    :cond_10fc
    const-string v23, "NotificationActionPinnedGame"

    const v24, 0x7f07037d

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1158
    :cond_111b
    const-string v23, "NotificationActionPinnedGameChannel"

    const v24, 0x7f07037e

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1160
    :cond_1136
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    if-eqz v23, :cond_11c7

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->length()I

    move-result v23

    if-lez v23, :cond_11c7

    .line 1161
    move-object/from16 v0, v17

    iget-object v12, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 1162
    .local v12, "message":Ljava/lang/CharSequence;
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v23

    const/16 v24, 0x14

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_1179

    .line 1163
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x0

    const/16 v25, 0x14

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-interface {v12, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "..."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1165
    :cond_1179
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_1185

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_11a8

    .line 1166
    :cond_1185
    const-string v23, "NotificationActionPinnedText"

    const v24, 0x7f07038d

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    aput-object v12, v25, v26

    const/16 v26, 0x2

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1168
    :cond_11a8
    const-string v23, "NotificationActionPinnedTextChannel"

    const v24, 0x7f07038e

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x1

    aput-object v12, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1171
    .end local v12    # "message":Ljava/lang/CharSequence;
    :cond_11c7
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_11d3

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_11f2

    .line 1172
    :cond_11d3
    const-string v23, "NotificationActionPinnedNoText"

    const v24, 0x7f070385

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1174
    :cond_11f2
    const-string v23, "NotificationActionPinnedNoTextChannel"

    const v24, 0x7f070386

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1178
    .end local v17    # "object":Lorg/telegram/messenger/MessageObject;
    :cond_120d
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGameScore;

    move/from16 v23, v0

    if-eqz v23, :cond_7c

    .line 1179
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1181
    :cond_122d
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_1997

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-nez v23, :cond_1997

    .line 1182
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    move/from16 v23, v0

    if-eqz v23, :cond_15af

    .line 1183
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v23

    if-eqz v23, :cond_12ad

    .line 1184
    if-nez p2, :cond_1296

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1296

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_1296

    .line 1185
    const-string v23, "NotificationMessageText"

    const v24, 0x7f0703b7

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1187
    :cond_1296
    const-string v23, "ChannelMessageNoText"

    const v24, 0x7f070143

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1189
    :cond_12ad
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    move/from16 v23, v0

    if-eqz v23, :cond_133c

    .line 1190
    if-nez p2, :cond_1325

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_1325

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1325

    .line 1191
    const-string v23, "NotificationMessageText"

    const v24, 0x7f0703b7

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "\ud83d\uddbc "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1193
    :cond_1325
    const-string v23, "ChannelMessagePhoto"

    const v24, 0x7f070144

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1195
    :cond_133c
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v23

    if-eqz v23, :cond_13bd

    .line 1196
    if-nez p2, :cond_13a6

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_13a6

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_13a6

    .line 1197
    const-string v23, "NotificationMessageText"

    const v24, 0x7f0703b7

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "\ud83d\udcf9 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1199
    :cond_13a6
    const-string v23, "ChannelMessageVideo"

    const v24, 0x7f070147

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1201
    :cond_13bd
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v23

    if-eqz v23, :cond_13da

    .line 1202
    const-string v23, "ChannelMessageAudio"

    const v24, 0x7f070132

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1203
    :cond_13da
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v23

    if-eqz v23, :cond_13f7

    .line 1204
    const-string v23, "ChannelMessageMusic"

    const v24, 0x7f070142

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1205
    :cond_13f7
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    move/from16 v23, v0

    if-eqz v23, :cond_1422

    .line 1206
    const-string v23, "ChannelMessageContact"

    const v24, 0x7f070133

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1207
    :cond_1422
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    move/from16 v23, v0

    if-nez v23, :cond_144a

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    move/from16 v23, v0

    if-eqz v23, :cond_1461

    .line 1208
    :cond_144a
    const-string v23, "ChannelMessageMap"

    const v24, 0x7f070141

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1209
    :cond_1461
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v23, v0

    if-eqz v23, :cond_7c

    .line 1210
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v23

    if-eqz v23, :cond_14b3

    .line 1211
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v10

    .line 1212
    .restart local v10    # "emoji":Ljava/lang/String;
    if-eqz v10, :cond_149c

    .line 1213
    const-string v23, "ChannelMessageStickerEmoji"

    const v24, 0x7f070146

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    aput-object v10, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1215
    :cond_149c
    const-string v23, "ChannelMessageSticker"

    const v24, 0x7f070145

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1217
    .end local v10    # "emoji":Ljava/lang/String;
    :cond_14b3
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v23

    if-eqz v23, :cond_1534

    .line 1218
    if-nez p2, :cond_151d

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_151d

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_151d

    .line 1219
    const-string v23, "NotificationMessageText"

    const v24, 0x7f0703b7

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "\ud83c\udfac "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1221
    :cond_151d
    const-string v23, "ChannelMessageGIF"

    const v24, 0x7f070135

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1224
    :cond_1534
    if-nez p2, :cond_1598

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_1598

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1598

    .line 1225
    const-string v23, "NotificationMessageText"

    const v24, 0x7f0703b7

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "\ud83d\udcce "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1227
    :cond_1598
    const-string v23, "ChannelMessageDocument"

    const v24, 0x7f070134

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1232
    :cond_15af
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v23

    if-eqz v23, :cond_1625

    .line 1233
    if-nez p2, :cond_1606

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1606

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_1606

    .line 1234
    const-string v23, "NotificationMessageGroupText"

    const v24, 0x7f0703af

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1236
    :cond_1606
    const-string v23, "ChannelMessageGroupNoText"

    const v24, 0x7f07013c

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1238
    :cond_1625
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    move/from16 v23, v0

    if-eqz v23, :cond_16c4

    .line 1239
    if-nez p2, :cond_16a5

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_16a5

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_16a5

    .line 1240
    const-string v23, "NotificationMessageGroupText"

    const v24, 0x7f0703af

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "\ud83d\uddbc "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1242
    :cond_16a5
    const-string v23, "ChannelMessageGroupPhoto"

    const v24, 0x7f07013d

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1244
    :cond_16c4
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v23

    if-eqz v23, :cond_1755

    .line 1245
    if-nez p2, :cond_1736

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_1736

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1736

    .line 1246
    const-string v23, "NotificationMessageGroupText"

    const v24, 0x7f0703af

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "\ud83d\udcf9 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1248
    :cond_1736
    const-string v23, "ChannelMessageGroupVideo"

    const v24, 0x7f070140

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1250
    :cond_1755
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v23

    if-eqz v23, :cond_177a

    .line 1251
    const-string v23, "ChannelMessageGroupAudio"

    const v24, 0x7f070136

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1252
    :cond_177a
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v23

    if-eqz v23, :cond_179f

    .line 1253
    const-string v23, "ChannelMessageGroupMusic"

    const v24, 0x7f07013b

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1254
    :cond_179f
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    move/from16 v23, v0

    if-eqz v23, :cond_17d2

    .line 1255
    const-string v23, "ChannelMessageGroupContact"

    const v24, 0x7f070137

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1256
    :cond_17d2
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    move/from16 v23, v0

    if-nez v23, :cond_17fa

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    move/from16 v23, v0

    if-eqz v23, :cond_1819

    .line 1257
    :cond_17fa
    const-string v23, "ChannelMessageGroupMap"

    const v24, 0x7f07013a

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1258
    :cond_1819
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v23, v0

    if-eqz v23, :cond_7c

    .line 1259
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v23

    if-eqz v23, :cond_187b

    .line 1260
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v10

    .line 1261
    .restart local v10    # "emoji":Ljava/lang/String;
    if-eqz v10, :cond_185c

    .line 1262
    const-string v23, "ChannelMessageGroupStickerEmoji"

    const v24, 0x7f07013f

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    aput-object v10, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1264
    :cond_185c
    const-string v23, "ChannelMessageGroupSticker"

    const v24, 0x7f07013e

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1266
    .end local v10    # "emoji":Ljava/lang/String;
    :cond_187b
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v23

    if-eqz v23, :cond_190c

    .line 1267
    if-nez p2, :cond_18ed

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_18ed

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_18ed

    .line 1268
    const-string v23, "NotificationMessageGroupText"

    const v24, 0x7f0703af

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "\ud83c\udfac "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1270
    :cond_18ed
    const-string v23, "ChannelMessageGroupGif"

    const v24, 0x7f070139

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1273
    :cond_190c
    if-nez p2, :cond_1978

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_1978

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1978

    .line 1274
    const-string v23, "NotificationMessageGroupText"

    const v24, 0x7f0703af

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "\ud83d\udcce "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1276
    :cond_1978
    const-string v23, "ChannelMessageGroupDocument"

    const v24, 0x7f070138

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1282
    :cond_1997
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v23

    if-eqz v23, :cond_1a0d

    .line 1283
    if-nez p2, :cond_19ee

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_19ee

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_19ee

    .line 1284
    const-string v23, "NotificationMessageGroupText"

    const v24, 0x7f0703af

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1286
    :cond_19ee
    const-string v23, "NotificationMessageGroupNoText"

    const v24, 0x7f0703ab

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1288
    :cond_1a0d
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    move/from16 v23, v0

    if-eqz v23, :cond_1aac

    .line 1289
    if-nez p2, :cond_1a8d

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_1a8d

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1a8d

    .line 1290
    const-string v23, "NotificationMessageGroupText"

    const v24, 0x7f0703af

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "\ud83d\uddbc "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1292
    :cond_1a8d
    const-string v23, "NotificationMessageGroupPhoto"

    const v24, 0x7f0703ac

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1294
    :cond_1aac
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v23

    if-eqz v23, :cond_1b3d

    .line 1295
    if-nez p2, :cond_1b1e

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_1b1e

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1b1e

    .line 1296
    const-string v23, "NotificationMessageGroupText"

    const v24, 0x7f0703af

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "\ud83d\udcf9 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1298
    :cond_1b1e
    const-string v23, "NotificationMessageGroupVideo"

    const v24, 0x7f0703b0

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1300
    :cond_1b3d
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v23

    if-eqz v23, :cond_1b62

    .line 1301
    const-string v23, "NotificationMessageGroupAudio"

    const v24, 0x7f0703a4

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1302
    :cond_1b62
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v23

    if-eqz v23, :cond_1b87

    .line 1303
    const-string v23, "NotificationMessageGroupMusic"

    const v24, 0x7f0703aa

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1304
    :cond_1b87
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    move/from16 v23, v0

    if-eqz v23, :cond_1bba

    .line 1305
    const-string v23, "NotificationMessageGroupContact"

    const v24, 0x7f0703a5

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1306
    :cond_1bba
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    move/from16 v23, v0

    if-eqz v23, :cond_1c09

    .line 1307
    const-string v23, "NotificationMessageGroupGame"

    const v24, 0x7f0703a7

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1308
    :cond_1c09
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    move/from16 v23, v0

    if-nez v23, :cond_1c31

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    move/from16 v23, v0

    if-eqz v23, :cond_1c50

    .line 1309
    :cond_1c31
    const-string v23, "NotificationMessageGroupMap"

    const v24, 0x7f0703a9

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1310
    :cond_1c50
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v23, v0

    if-eqz v23, :cond_7c

    .line 1311
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v23

    if-eqz v23, :cond_1cb2

    .line 1312
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v10

    .line 1313
    .restart local v10    # "emoji":Ljava/lang/String;
    if-eqz v10, :cond_1c93

    .line 1314
    const-string v23, "NotificationMessageGroupStickerEmoji"

    const v24, 0x7f0703ae

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    aput-object v10, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1316
    :cond_1c93
    const-string v23, "NotificationMessageGroupSticker"

    const v24, 0x7f0703ad

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1318
    .end local v10    # "emoji":Ljava/lang/String;
    :cond_1cb2
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v23

    if-eqz v23, :cond_1d43

    .line 1319
    if-nez p2, :cond_1d24

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_1d24

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1d24

    .line 1320
    const-string v23, "NotificationMessageGroupText"

    const v24, 0x7f0703af

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "\ud83c\udfac "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1322
    :cond_1d24
    const-string v23, "NotificationMessageGroupGif"

    const v24, 0x7f0703a8

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1325
    :cond_1d43
    if-nez p2, :cond_1daf

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_1daf

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1daf

    .line 1326
    const-string v23, "NotificationMessageGroupText"

    const v24, 0x7f0703af

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "\ud83d\udcce "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1328
    :cond_1daf
    const-string v23, "NotificationMessageGroupDocument"

    const v24, 0x7f0703a6

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1334
    :cond_1dce
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_1df9

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-nez v23, :cond_1df9

    .line 1335
    const-string v23, "ChannelMessageNoText"

    const v24, 0x7f070143

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 1337
    :cond_1df9
    const-string v23, "NotificationMessageGroupNoText"

    const v24, 0x7f0703ab

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c
.end method

.method private isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z
    .registers 3
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 1361
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_26

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-nez v0, :cond_26

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v0, :cond_26

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v0, :cond_24

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    if-eqz v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private playInChatSound()V
    .registers 7

    .prologue
    .line 1434
    iget-boolean v3, p0, Lorg/telegram/messenger/NotificationsController;->inChatSoundEnabled:Z

    if-eqz v3, :cond_e

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->isRecordingAudio()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1492
    :cond_e
    :goto_e
    return-void

    .line 1438
    :cond_f
    :try_start_f
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_39

    move-result v3

    if-eqz v3, :cond_e

    .line 1446
    :goto_17
    :try_start_17
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "Notifications"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1447
    .local v2, "preferences":Landroid/content/SharedPreferences;
    iget-wide v4, p0, Lorg/telegram/messenger/NotificationsController;->opened_dialog_id:J

    invoke-direct {p0, v2, v4, v5}, Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;J)I

    move-result v1

    .line 1448
    .local v1, "notifyOverride":I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_e

    .line 1451
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/NotificationsController$14;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/NotificationsController$14;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_33} :catch_34

    goto :goto_e

    .line 1489
    .end local v1    # "notifyOverride":I
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    :catch_34
    move-exception v0

    .line 1490
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_e

    .line 1441
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_39
    move-exception v0

    .line 1442
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_17
.end method

.method private scheduleNotificationDelay(Z)V
    .registers 8
    .param p1, "onlineReason"    # Z

    .prologue
    .line 1496
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delay notification start, onlineReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1497
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1498
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1499
    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_2d

    const/16 v1, 0xbb8

    :goto_28
    int-to-long v4, v1

    invoke-static {v2, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_30

    .line 1504
    :goto_2c
    return-void

    .line 1499
    :cond_2d
    const/16 v1, 0x3e8

    goto :goto_28

    .line 1500
    :catch_30
    move-exception v0

    .line 1501
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1502
    iget-boolean v1, p0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    invoke-direct {p0, v1}, Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V

    goto :goto_2c
.end method

.method private scheduleNotificationRepeat()V
    .registers 11

    .prologue
    .line 1347
    :try_start_0
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v5, 0x0

    new-instance v6, Landroid/content/Intent;

    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v8, Lorg/telegram/messenger/NotificationRepeat;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1348
    .local v2, "pintent":Landroid/app/PendingIntent;
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "Notifications"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1349
    .local v3, "preferences":Landroid/content/SharedPreferences;
    const-string v4, "repeat_messages"

    const/16 v5, 0x3c

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1350
    .local v1, "minutes":I
    if-lez v1, :cond_39

    iget v4, p0, Lorg/telegram/messenger/NotificationsController;->personal_count:I

    if-lez v4, :cond_39

    .line 1351
    iget-object v4, p0, Lorg/telegram/messenger/NotificationsController;->alarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    mul-int/lit8 v8, v1, 0x3c

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1358
    .end local v1    # "minutes":I
    .end local v2    # "pintent":Landroid/app/PendingIntent;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :goto_38
    return-void

    .line 1353
    .restart local v1    # "minutes":I
    .restart local v2    # "pintent":Landroid/app/PendingIntent;
    .restart local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_39
    iget-object v4, p0, Lorg/telegram/messenger/NotificationsController;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    goto :goto_38

    .line 1355
    .end local v1    # "minutes":I
    .end local v2    # "pintent":Landroid/app/PendingIntent;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :catch_3f
    move-exception v0

    .line 1356
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_38
.end method

.method private setBadge(I)V
    .registers 4
    .param p1, "count"    # I

    .prologue
    .line 831
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$12;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/NotificationsController$12;-><init>(Lorg/telegram/messenger/NotificationsController;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 841
    return-void
.end method

.method private showExtraNotifications(Landroid/support/v4/app/NotificationCompat$Builder;Z)V
    .registers 59
    .param p1, "notificationBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "notifyAboutLast"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 1889
    sget v49, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v50, 0x12

    move/from16 v0, v49

    move/from16 v1, v50

    if-ge v0, v1, :cond_b

    .line 2096
    :cond_a
    return-void

    .line 1893
    :cond_b
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 1894
    .local v42, "sortedDialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 1895
    .local v25, "messagesByDialogs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v49

    move/from16 v0, v49

    if-ge v6, v0, :cond_73

    .line 1896
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/messenger/MessageObject;

    .line 1897
    .local v23, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v14

    .line 1898
    .local v14, "dialog_id":J
    long-to-int v0, v14

    move/from16 v49, v0

    if-nez v49, :cond_3e

    .line 1895
    :goto_3b
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 1902
    :cond_3e
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    move-object/from16 v0, v25

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1903
    .local v7, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v7, :cond_6d

    .line 1904
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1905
    .restart local v7    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    move-object/from16 v0, v25

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1906
    const/16 v49, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    move-object/from16 v0, v42

    move/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1908
    :cond_6d
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 1911
    .end local v7    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v14    # "dialog_id":J
    .end local v23    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_73
    new-instance v33, Ljava/util/HashMap;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashMap;-><init>()V

    .line 1912
    .local v33, "oldIdsWear":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Ljava/util/HashMap;

    move-object/from16 v49, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1913
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Ljava/util/HashMap;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/HashMap;->clear()V

    .line 1915
    const/4 v8, 0x0

    .local v8, "b":I
    :goto_8f
    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v49

    move/from16 v0, v49

    if-ge v8, v0, :cond_6fa

    .line 1916
    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/Long;

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1917
    .restart local v14    # "dialog_id":J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    move-object/from16 v0, v25

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/ArrayList;

    .line 1918
    .local v24, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/16 v49, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lorg/telegram/messenger/MessageObject;

    invoke-virtual/range {v49 .. v49}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v21

    .line 1919
    .local v21, "max_id":I
    const/16 v49, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v49

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v20, v0

    .line 1920
    .local v20, "max_date":I
    const/4 v11, 0x0

    .line 1921
    .local v11, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    const/16 v46, 0x0

    .line 1923
    .local v46, "user":Lorg/telegram/tgnet/TLRPC$User;
    const-wide/16 v50, 0x0

    cmp-long v49, v14, v50

    if-lez v49, :cond_f6

    .line 1924
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v49

    long-to-int v0, v14

    move/from16 v50, v0

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v46

    .line 1925
    if-nez v46, :cond_10c

    .line 1915
    :cond_f3
    :goto_f3
    add-int/lit8 v8, v8, 0x1

    goto :goto_8f

    .line 1929
    :cond_f6
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v49

    long-to-int v0, v14

    move/from16 v50, v0

    move/from16 v0, v50

    neg-int v0, v0

    move/from16 v50, v0

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v11

    .line 1930
    if-eqz v11, :cond_f3

    .line 1934
    :cond_10c
    const/16 v35, 0x0

    .line 1935
    .local v35, "photoPath":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/16 v49, 0x0

    invoke-static/range {v49 .. v49}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v49

    if-nez v49, :cond_11a

    sget-boolean v49, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    if-eqz v49, :cond_308

    .line 1936
    :cond_11a
    const-string v49, "AppName"

    const v50, 0x7f070092

    invoke-static/range {v49 .. v50}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    .line 1954
    .local v31, "name":Ljava/lang/String;
    :cond_123
    :goto_123
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    move-object/from16 v0, v33

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    .line 1955
    .local v32, "notificationId":Ljava/lang/Integer;
    if-nez v32, :cond_3ab

    .line 1956
    long-to-int v0, v14

    move/from16 v49, v0

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    .line 1961
    :goto_13a
    new-instance v49, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;

    move-object/from16 v0, v49

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x3e8

    mul-long v50, v50, v52

    invoke-virtual/range {v49 .. v51}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->setLatestTimestamp(J)Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;

    move-result-object v45

    .line 1963
    .local v45, "unreadConvBuilder":Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    new-instance v27, Landroid/content/Intent;

    invoke-direct/range {v27 .. v27}, Landroid/content/Intent;-><init>()V

    .line 1964
    .local v27, "msgHeardIntent":Landroid/content/Intent;
    const/16 v49, 0x20

    move-object/from16 v0, v27

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1965
    const-string v49, "org.telegram.messenger.ACTION_MESSAGE_HEARD"

    move-object/from16 v0, v27

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1966
    const-string v49, "dialog_id"

    move-object/from16 v0, v27

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1967
    const-string v49, "max_id"

    move-object/from16 v0, v27

    move-object/from16 v1, v49

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1968
    sget-object v49, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v50

    const/high16 v51, 0x8000000

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v2, v27

    move/from16 v3, v51

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v28

    .line 1969
    .local v28, "msgHeardPendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, v45

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->setReadPendingIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;

    .line 1971
    const/16 v47, 0x0

    .line 1973
    .local v47, "wearReplyAction":Landroid/support/v4/app/NotificationCompat$Action;
    invoke-static {v11}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v49

    if-eqz v49, :cond_1a6

    if-eqz v11, :cond_29a

    iget-boolean v0, v11, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v49, v0

    if-eqz v49, :cond_29a

    :cond_1a6
    const/16 v49, 0x0

    invoke-static/range {v49 .. v49}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v49

    if-nez v49, :cond_29a

    sget-boolean v49, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    if-nez v49, :cond_29a

    .line 1974
    new-instance v29, Landroid/content/Intent;

    invoke-direct/range {v29 .. v29}, Landroid/content/Intent;-><init>()V

    .line 1975
    .local v29, "msgReplyIntent":Landroid/content/Intent;
    const/16 v49, 0x20

    move-object/from16 v0, v29

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1976
    const-string v49, "org.telegram.messenger.ACTION_MESSAGE_REPLY"

    move-object/from16 v0, v29

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1977
    const-string v49, "dialog_id"

    move-object/from16 v0, v29

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1978
    const-string v49, "max_id"

    move-object/from16 v0, v29

    move-object/from16 v1, v49

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1979
    sget-object v49, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v50

    const/high16 v51, 0x8000000

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v2, v29

    move/from16 v3, v51

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v30

    .line 1980
    .local v30, "msgReplyPendingIntent":Landroid/app/PendingIntent;
    new-instance v49, Landroid/support/v4/app/RemoteInput$Builder;

    const-string v50, "extra_voice_reply"

    invoke-direct/range {v49 .. v50}, Landroid/support/v4/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    const-string v50, "Reply"

    const v51, 0x7f07047f

    invoke-static/range {v50 .. v51}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Landroid/support/v4/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/support/v4/app/RemoteInput$Builder;->build()Landroid/support/v4/app/RemoteInput;

    move-result-object v36

    .line 1981
    .local v36, "remoteInputAuto":Landroid/support/v4/app/RemoteInput;
    move-object/from16 v0, v45

    move-object/from16 v1, v30

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->setReplyAction(Landroid/app/PendingIntent;Landroid/support/v4/app/RemoteInput;)Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;

    .line 1983
    new-instance v38, Landroid/content/Intent;

    sget-object v49, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v50, Lorg/telegram/messenger/WearReplyReceiver;

    move-object/from16 v0, v38

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1984
    .local v38, "replyIntent":Landroid/content/Intent;
    const-string v49, "dialog_id"

    move-object/from16 v0, v38

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1985
    const-string v49, "max_id"

    move-object/from16 v0, v38

    move-object/from16 v1, v49

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1986
    sget-object v49, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v50

    const/high16 v51, 0x8000000

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v2, v38

    move/from16 v3, v51

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v39

    .line 1987
    .local v39, "replyPendingIntent":Landroid/app/PendingIntent;
    new-instance v49, Landroid/support/v4/app/RemoteInput$Builder;

    const-string v50, "extra_voice_reply"

    invoke-direct/range {v49 .. v50}, Landroid/support/v4/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    const-string v50, "Reply"

    const v51, 0x7f07047f

    invoke-static/range {v50 .. v51}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Landroid/support/v4/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/support/v4/app/RemoteInput$Builder;->build()Landroid/support/v4/app/RemoteInput;

    move-result-object v37

    .line 1989
    .local v37, "remoteInputWear":Landroid/support/v4/app/RemoteInput;
    if-eqz v11, :cond_3b8

    .line 1990
    const-string v49, "ReplyToGroup"

    const v50, 0x7f070480

    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aput-object v31, v51, v52

    invoke-static/range {v49 .. v51}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    .line 1994
    .local v40, "replyToString":Ljava/lang/String;
    :goto_278
    new-instance v49, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    const v50, 0x7f020168

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v2, v40

    move-object/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v50, 0x1

    invoke-virtual/range {v49 .. v50}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/support/v4/app/NotificationCompat$Action$Builder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroid/support/v4/app/RemoteInput;)Landroid/support/v4/app/NotificationCompat$Action$Builder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v47

    .line 1997
    .end local v29    # "msgReplyIntent":Landroid/content/Intent;
    .end local v30    # "msgReplyPendingIntent":Landroid/app/PendingIntent;
    .end local v36    # "remoteInputAuto":Landroid/support/v4/app/RemoteInput;
    .end local v37    # "remoteInputWear":Landroid/support/v4/app/RemoteInput;
    .end local v38    # "replyIntent":Landroid/content/Intent;
    .end local v39    # "replyPendingIntent":Landroid/app/PendingIntent;
    .end local v40    # "replyToString":Ljava/lang/String;
    :cond_29a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;

    move-object/from16 v49, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 1998
    .local v13, "count":Ljava/lang/Integer;
    if-nez v13, :cond_2b2

    .line 1999
    const/16 v49, 0x0

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 2001
    :cond_2b2
    new-instance v49, Landroid/support/v4/app/NotificationCompat$MessagingStyle;

    const/16 v50, 0x0

    invoke-direct/range {v49 .. v50}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;-><init>(Ljava/lang/CharSequence;)V

    const-string v50, "%1$s (%2$s)"

    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aput-object v31, v51, v52

    const/16 v52, 0x1

    const-string v53, "NewMessages"

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v54

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v55

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->max(II)I

    move-result v54

    invoke-static/range {v53 .. v54}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v53

    aput-object v53, v51, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$MessagingStyle;

    move-result-object v26

    .line 2003
    .local v26, "messagingStyle":Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    const-string v44, ""

    .line 2004
    .local v44, "text":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v49

    add-int/lit8 v6, v49, -0x1

    :goto_2ed
    if-ltz v6, :cond_497

    .line 2005
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/messenger/MessageObject;

    .line 2006
    .restart local v23    # "messageObject":Lorg/telegram/messenger/MessageObject;
    const/16 v49, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/NotificationsController;->getStringForMessage(Lorg/telegram/messenger/MessageObject;Z)Ljava/lang/String;

    move-result-object v22

    .line 2007
    .local v22, "message":Ljava/lang/String;
    if-nez v22, :cond_3cf

    .line 2004
    :goto_305
    add-int/lit8 v6, v6, -0x1

    goto :goto_2ed

    .line 1938
    .end local v13    # "count":Ljava/lang/Integer;
    .end local v22    # "message":Ljava/lang/String;
    .end local v23    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v26    # "messagingStyle":Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    .end local v27    # "msgHeardIntent":Landroid/content/Intent;
    .end local v28    # "msgHeardPendingIntent":Landroid/app/PendingIntent;
    .end local v31    # "name":Ljava/lang/String;
    .end local v32    # "notificationId":Ljava/lang/Integer;
    .end local v44    # "text":Ljava/lang/String;
    .end local v45    # "unreadConvBuilder":Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    .end local v47    # "wearReplyAction":Landroid/support/v4/app/NotificationCompat$Action;
    :cond_308
    if-eqz v11, :cond_356

    .line 1939
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 1943
    .restart local v31    # "name":Ljava/lang/String;
    :goto_30e
    if-eqz v11, :cond_35b

    .line 1944
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v49, v0

    if-eqz v49, :cond_123

    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v49, v0

    if-eqz v49, :cond_123

    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x0

    cmp-long v49, v50, v52

    if-eqz v49, :cond_123

    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    move/from16 v49, v0

    if-eqz v49, :cond_123

    .line 1945
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v35, v0

    goto/16 :goto_123

    .line 1941
    .end local v31    # "name":Ljava/lang/String;
    :cond_356
    invoke-static/range {v46 .. v46}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "name":Ljava/lang/String;
    goto :goto_30e

    .line 1948
    :cond_35b
    move-object/from16 v0, v46

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v49, v0

    if-eqz v49, :cond_123

    move-object/from16 v0, v46

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v49, v0

    if-eqz v49, :cond_123

    move-object/from16 v0, v46

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x0

    cmp-long v49, v50, v52

    if-eqz v49, :cond_123

    move-object/from16 v0, v46

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    move/from16 v49, v0

    if-eqz v49, :cond_123

    .line 1949
    move-object/from16 v0, v46

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v35, v0

    goto/16 :goto_123

    .line 1958
    .restart local v32    # "notificationId":Ljava/lang/Integer;
    :cond_3ab
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    move-object/from16 v0, v33

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_13a

    .line 1992
    .restart local v27    # "msgHeardIntent":Landroid/content/Intent;
    .restart local v28    # "msgHeardPendingIntent":Landroid/app/PendingIntent;
    .restart local v29    # "msgReplyIntent":Landroid/content/Intent;
    .restart local v30    # "msgReplyPendingIntent":Landroid/app/PendingIntent;
    .restart local v36    # "remoteInputAuto":Landroid/support/v4/app/RemoteInput;
    .restart local v37    # "remoteInputWear":Landroid/support/v4/app/RemoteInput;
    .restart local v38    # "replyIntent":Landroid/content/Intent;
    .restart local v39    # "replyPendingIntent":Landroid/app/PendingIntent;
    .restart local v45    # "unreadConvBuilder":Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    .restart local v47    # "wearReplyAction":Landroid/support/v4/app/NotificationCompat$Action;
    :cond_3b8
    const-string v49, "ReplyToUser"

    const v50, 0x7f070481

    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aput-object v31, v51, v52

    invoke-static/range {v49 .. v51}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    .restart local v40    # "replyToString":Ljava/lang/String;
    goto/16 :goto_278

    .line 2010
    .end local v29    # "msgReplyIntent":Landroid/content/Intent;
    .end local v30    # "msgReplyPendingIntent":Landroid/app/PendingIntent;
    .end local v36    # "remoteInputAuto":Landroid/support/v4/app/RemoteInput;
    .end local v37    # "remoteInputWear":Landroid/support/v4/app/RemoteInput;
    .end local v38    # "replyIntent":Landroid/content/Intent;
    .end local v39    # "replyPendingIntent":Landroid/app/PendingIntent;
    .end local v40    # "replyToString":Ljava/lang/String;
    .restart local v13    # "count":Ljava/lang/Integer;
    .restart local v22    # "message":Ljava/lang/String;
    .restart local v23    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .restart local v26    # "messagingStyle":Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    .restart local v44    # "text":Ljava/lang/String;
    :cond_3cf
    if-eqz v11, :cond_455

    .line 2011
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, " @ "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    const-string v50, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    .line 2015
    :goto_3f4
    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->length()I

    move-result v49

    if-lez v49, :cond_411

    .line 2016
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v49

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "\n\n"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 2018
    :cond_411
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v49

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 2020
    move-object/from16 v0, v45

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->addMessage(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;

    .line 2021
    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x3e8

    mul-long v50, v50, v52

    const/16 v49, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-wide/from16 v2, v50

    move-object/from16 v4, v49

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$MessagingStyle;

    goto/16 :goto_305

    .line 2013
    :cond_455
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v49

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ": "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    const-string v50, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v49

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v50

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, " "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    const-string v51, ""

    invoke-virtual/range {v49 .. v51}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_3f4

    .line 2024
    .end local v22    # "message":Ljava/lang/String;
    .end local v23    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_497
    new-instance v19, Landroid/content/Intent;

    sget-object v49, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v50, Lorg/telegram/ui/LaunchActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2025
    .local v19, "intent":Landroid/content/Intent;
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "com.tmessages.openchat"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v50

    invoke-virtual/range {v49 .. v51}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v49

    const v50, 0x7fffffff

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v19

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2026
    const v49, 0x8000

    move-object/from16 v0, v19

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2027
    if-eqz v11, :cond_672

    .line 2028
    const-string v49, "chatId"

    iget v0, v11, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v50, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2032
    :cond_4e6
    :goto_4e6
    sget-object v49, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/16 v50, 0x0

    const/high16 v51, 0x40000000    # 2.0f

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v2, v19

    move/from16 v3, v51

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 2034
    .local v12, "contentIntent":Landroid/app/PendingIntent;
    new-instance v48, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct/range {v48 .. v48}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    .line 2035
    .local v48, "wearableExtender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    if-eqz v47, :cond_506

    .line 2036
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 2039
    :cond_506
    const/16 v16, 0x0

    .line 2040
    .local v16, "dismissalID":Ljava/lang/String;
    if-eqz v11, :cond_687

    .line 2041
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "tgchat"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    iget v0, v11, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "_"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2045
    :cond_52f
    :goto_52f
    move-object/from16 v0, v48

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setDismissalId(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 2047
    new-instance v43, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct/range {v43 .. v43}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    .line 2048
    .local v43, "summaryExtender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "summary_"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setDismissalId(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 2049
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2051
    new-instance v49, Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v50, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct/range {v49 .. v50}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 2052
    move-object/from16 v0, v49

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v49

    const v50, 0x7f0201fb

    .line 2053
    invoke-virtual/range {v49 .. v50}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v49

    const-string v50, "messages"

    .line 2054
    invoke-virtual/range {v49 .. v50}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v49

    .line 2055
    move-object/from16 v0, v49

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v49

    const/16 v50, 0x1

    .line 2056
    invoke-virtual/range {v49 .. v50}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v49

    .line 2057
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v50

    invoke-virtual/range {v49 .. v50}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v49

    const v50, -0xd35a20

    .line 2058
    invoke-virtual/range {v49 .. v50}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v49

    const/16 v50, 0x0

    .line 2059
    invoke-virtual/range {v49 .. v50}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v50

    const/16 v49, 0x0

    .line 2060
    move-object/from16 v0, v24

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v49

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v52, v0

    const-wide/16 v54, 0x3e8

    mul-long v52, v52, v54

    move-object/from16 v0, v50

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v49

    .line 2061
    move-object/from16 v0, v49

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v49

    .line 2062
    move-object/from16 v0, v49

    invoke-virtual {v0, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v49

    .line 2063
    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v49

    new-instance v50, Landroid/support/v4/app/NotificationCompat$CarExtender;

    invoke-direct/range {v50 .. v50}, Landroid/support/v4/app/NotificationCompat$CarExtender;-><init>()V

    .line 2064
    invoke-virtual/range {v45 .. v45}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->build()Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Landroid/support/v4/app/NotificationCompat$CarExtender;->setUnreadConversation(Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;)Landroid/support/v4/app/NotificationCompat$CarExtender;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v49

    const-string v50, "msg"

    .line 2065
    invoke-virtual/range {v49 .. v50}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    .line 2066
    .local v10, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    if-eqz v35, :cond_616

    .line 2067
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v49

    const/16 v50, 0x0

    const-string v51, "50_50"

    move-object/from16 v0, v49

    move-object/from16 v1, v35

    move-object/from16 v2, v50

    move-object/from16 v3, v51

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->getImageFromMemory(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v18

    .line 2068
    .local v18, "img":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v18, :cond_6b2

    .line 2069
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v10, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2085
    .end local v18    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :cond_616
    :goto_616
    if-nez v11, :cond_64c

    if-eqz v46, :cond_64c

    move-object/from16 v0, v46

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v49, v0

    if-eqz v49, :cond_64c

    move-object/from16 v0, v46

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/lang/String;->length()I

    move-result v49

    if-lez v49, :cond_64c

    .line 2086
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "tel:+"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v46

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v10, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addPerson(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2089
    :cond_64c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    move-object/from16 v49, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v50

    invoke-virtual {v10}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v51

    invoke-virtual/range {v49 .. v51}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 2090
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Ljava/util/HashMap;

    move-object/from16 v49, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f3

    .line 2029
    .end local v10    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v12    # "contentIntent":Landroid/app/PendingIntent;
    .end local v16    # "dismissalID":Ljava/lang/String;
    .end local v43    # "summaryExtender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .end local v48    # "wearableExtender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    :cond_672
    if-eqz v46, :cond_4e6

    .line 2030
    const-string v49, "userId"

    move-object/from16 v0, v46

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v50, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_4e6

    .line 2042
    .restart local v12    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v16    # "dismissalID":Ljava/lang/String;
    .restart local v48    # "wearableExtender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    :cond_687
    if-eqz v46, :cond_52f

    .line 2043
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "tguser"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v46

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "_"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_52f

    .line 2072
    .restart local v10    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v18    # "img":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v43    # "summaryExtender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    :cond_6b2
    const/high16 v49, 0x43200000    # 160.0f

    const/high16 v50, 0x42480000    # 50.0f

    :try_start_6b6
    invoke-static/range {v50 .. v50}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v50

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    div-float v41, v49, v50

    .line 2073
    .local v41, "scaleFactor":F
    new-instance v34, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2074
    .local v34, "options":Landroid/graphics/BitmapFactory$Options;
    const/high16 v49, 0x3f800000    # 1.0f

    cmpg-float v49, v41, v49

    if-gez v49, :cond_6f4

    const/16 v49, 0x1

    :goto_6ce
    move/from16 v0, v49

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2075
    const/16 v49, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v49

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 2076
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_616

    .line 2077
    invoke-virtual {v10, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_6ef
    .catch Ljava/lang/Throwable; {:try_start_6b6 .. :try_end_6ef} :catch_6f1

    goto/16 :goto_616

    .line 2079
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .end local v34    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v41    # "scaleFactor":F
    :catch_6f1
    move-exception v49

    goto/16 :goto_616

    .line 2074
    .restart local v34    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v41    # "scaleFactor":F
    :cond_6f4
    move/from16 v0, v41

    float-to-int v0, v0

    move/from16 v49, v0

    goto :goto_6ce

    .line 2093
    .end local v10    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v11    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v12    # "contentIntent":Landroid/app/PendingIntent;
    .end local v13    # "count":Ljava/lang/Integer;
    .end local v14    # "dialog_id":J
    .end local v16    # "dismissalID":Ljava/lang/String;
    .end local v18    # "img":Landroid/graphics/drawable/BitmapDrawable;
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v20    # "max_date":I
    .end local v21    # "max_id":I
    .end local v24    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v26    # "messagingStyle":Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    .end local v27    # "msgHeardIntent":Landroid/content/Intent;
    .end local v28    # "msgHeardPendingIntent":Landroid/app/PendingIntent;
    .end local v31    # "name":Ljava/lang/String;
    .end local v32    # "notificationId":Ljava/lang/Integer;
    .end local v34    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v35    # "photoPath":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v41    # "scaleFactor":F
    .end local v43    # "summaryExtender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .end local v44    # "text":Ljava/lang/String;
    .end local v45    # "unreadConvBuilder":Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    .end local v46    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v47    # "wearReplyAction":Landroid/support/v4/app/NotificationCompat$Action;
    .end local v48    # "wearableExtender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    :cond_6fa
    invoke-virtual/range {v33 .. v33}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v50

    :goto_702
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    if-eqz v49, :cond_a

    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 2094
    .local v17, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    move-object/from16 v51, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/Integer;

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Integer;->intValue()I

    move-result v49

    move-object/from16 v0, v51

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(I)V

    goto :goto_702
.end method

.method private showOrUpdateNotification(Z)V
    .registers 66
    .param p1, "notifyAboutLast"    # Z

    .prologue
    .line 1522
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v58

    if-eqz v58, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v58

    if-eqz v58, :cond_16

    .line 1523
    :cond_12
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->dismissNotification()V

    .line 1885
    :cond_15
    :goto_15
    return-void

    .line 1527
    :cond_16
    :try_start_16
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V

    .line 1529
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-virtual/range {v58 .. v59}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/telegram/messenger/MessageObject;

    .line 1530
    .local v29, "lastMessageObject":Lorg/telegram/messenger/MessageObject;
    sget-object v58, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v59, "Notifications"

    const/16 v60, 0x0

    invoke-virtual/range {v58 .. v60}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v47

    .line 1531
    .local v47, "preferences":Landroid/content/SharedPreferences;
    const-string v58, "dismissDate"

    const/16 v59, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 1532
    .local v16, "dismissDate":I
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v58, v0

    move/from16 v0, v58

    move/from16 v1, v16

    if-gt v0, v1, :cond_5e

    .line 1533
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->dismissNotification()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_58} :catch_59

    goto :goto_15

    .line 1882
    .end local v16    # "dismissDate":I
    .end local v29    # "lastMessageObject":Lorg/telegram/messenger/MessageObject;
    .end local v47    # "preferences":Landroid/content/SharedPreferences;
    :catch_59
    move-exception v18

    .line 1883
    .local v18, "e":Ljava/lang/Exception;
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_15

    .line 1537
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v16    # "dismissDate":I
    .restart local v29    # "lastMessageObject":Lorg/telegram/messenger/MessageObject;
    .restart local v47    # "preferences":Landroid/content/SharedPreferences;
    :cond_5e
    :try_start_5e
    invoke-virtual/range {v29 .. v29}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v14

    .line 1538
    .local v14, "dialog_id":J
    move-wide/from16 v44, v14

    .line 1539
    .local v44, "override_dialog_id":J
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    move/from16 v58, v0

    if-eqz v58, :cond_83

    .line 1540
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v58, v0

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v44, v0

    .line 1542
    :cond_83
    invoke-virtual/range {v29 .. v29}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v35

    .line 1543
    .local v35, "mid":I
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v58, v0

    if-eqz v58, :cond_701

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    .line 1544
    .local v6, "chat_id":I
    :goto_ab
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v55, v0

    .line 1545
    .local v55, "user_id":I
    if-nez v55, :cond_713

    .line 1546
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v55, v0

    .line 1551
    :cond_cb
    :goto_cb
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v58

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v54

    .line 1552
    .local v54, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v5, 0x0

    .line 1553
    .local v5, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v6, :cond_e6

    .line 1554
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v58

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    .line 1556
    :cond_e6
    const/16 v46, 0x0

    .line 1558
    .local v46, "photoPath":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/16 v40, 0x0

    .line 1559
    .local v40, "notifyDisabled":Z
    const/16 v38, 0x0

    .line 1560
    .local v38, "needVibrate":I
    const/4 v7, 0x0

    .line 1561
    .local v7, "choosenSoundPath":Ljava/lang/String;
    const v31, -0xffff01

    .line 1564
    .local v31, "ledColor":I
    const/16 v22, 0x0

    .line 1566
    .local v22, "inAppPreview":Z
    const/16 v48, 0x0

    .line 1570
    .local v48, "priority":I
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-wide/from16 v2, v44

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;J)I

    move-result v42

    .line 1571
    .local v42, "notifyOverride":I
    if-eqz p1, :cond_12c

    const/16 v58, 0x2

    move/from16 v0, v42

    move/from16 v1, v58

    if-eq v0, v1, :cond_12c

    const-string v58, "EnableAll"

    const/16 v59, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v58

    if-eqz v58, :cond_12a

    if-eqz v6, :cond_12e

    const-string v58, "EnableGroup"

    const/16 v59, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v58

    if-nez v58, :cond_12e

    :cond_12a
    if-nez v42, :cond_12e

    .line 1572
    :cond_12c
    const/16 v40, 0x1

    .line 1575
    :cond_12e
    if-nez v40, :cond_1d8

    cmp-long v58, v14, v44

    if-nez v58, :cond_1d8

    if-eqz v5, :cond_1d8

    .line 1578
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "custom_"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    const/16 v59, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v58

    if-eqz v58, :cond_72b

    .line 1579
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "smart_max_count_"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    const/16 v59, 0x2

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v41

    .line 1580
    .local v41, "notifyMaxCount":I
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "smart_delay_"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    const/16 v59, 0xb4

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v39

    .line 1585
    .local v39, "notifyDelay":I
    :goto_19b
    if-eqz v41, :cond_1d8

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->smartNotificationsDialogs:Ljava/util/HashMap;

    move-object/from16 v58, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Point;

    .line 1587
    .local v13, "dialogInfo":Landroid/graphics/Point;
    if-nez v13, :cond_731

    .line 1588
    new-instance v13, Landroid/graphics/Point;

    .end local v13    # "dialogInfo":Landroid/graphics/Point;
    const/16 v58, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    const-wide/16 v62, 0x3e8

    div-long v60, v60, v62

    move-wide/from16 v0, v60

    long-to-int v0, v0

    move/from16 v59, v0

    move/from16 v0, v58

    move/from16 v1, v59

    invoke-direct {v13, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 1589
    .restart local v13    # "dialogInfo":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->smartNotificationsDialogs:Ljava/util/HashMap;

    move-object/from16 v58, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v59

    move-object/from16 v0, v58

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1606
    .end local v13    # "dialogInfo":Landroid/graphics/Point;
    .end local v39    # "notifyDelay":I
    .end local v41    # "notifyMaxCount":I
    :cond_1d8
    :goto_1d8
    sget-object v58, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual/range {v58 .. v58}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 1607
    .local v11, "defaultPath":Ljava/lang/String;
    if-nez v40, :cond_391

    .line 1608
    const-string v58, "EnableInAppSounds"

    const/16 v59, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    .line 1609
    .local v24, "inAppSounds":Z
    const-string v58, "EnableInAppVibrate"

    const/16 v59, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 1610
    .local v25, "inAppVibrate":Z
    const-string v58, "EnableInAppPreview"

    const/16 v59, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 1611
    const-string v58, "EnableInAppPriority"

    const/16 v59, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 1613
    .local v23, "inAppPriority":Z
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "custom_"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    const/16 v59, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .local v10, "custom":Z
    if-eqz v10, :cond_782

    .line 1614
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "vibrate_"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    const/16 v59, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v57

    .line 1615
    .local v57, "vibrateOverride":I
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "priority_"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    const/16 v59, 0x3

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v49

    .line 1616
    .local v49, "priorityOverride":I
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "sound_path_"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    const/16 v59, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1622
    :goto_29e
    const/16 v56, 0x0

    .line 1625
    .local v56, "vibrateOnlyIfSilent":Z
    if-eqz v6, :cond_797

    .line 1626
    if-eqz v7, :cond_789

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_789

    .line 1627
    const/4 v7, 0x0

    .line 1631
    :cond_2ab
    :goto_2ab
    const-string v58, "vibrate_group"

    const/16 v59, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v38

    .line 1632
    const-string v58, "priority_group"

    const/16 v59, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v48

    .line 1633
    const-string v58, "GroupLed"

    const v59, -0xffff01

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v31

    .line 1644
    :cond_2d6
    :goto_2d6
    if-eqz v10, :cond_318

    .line 1645
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "color_"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v58

    if-eqz v58, :cond_318

    .line 1646
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "color_"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    const/16 v59, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v31

    .line 1650
    :cond_318
    const/16 v58, 0x3

    move/from16 v0, v49

    move/from16 v1, v58

    if-eq v0, v1, :cond_322

    .line 1651
    move/from16 v48, v49

    .line 1654
    :cond_322
    const/16 v58, 0x4

    move/from16 v0, v38

    move/from16 v1, v58

    if-ne v0, v1, :cond_32e

    .line 1655
    const/16 v56, 0x1

    .line 1656
    const/16 v38, 0x0

    .line 1658
    :cond_32e
    const/16 v58, 0x2

    move/from16 v0, v38

    move/from16 v1, v58

    if-ne v0, v1, :cond_346

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-eq v0, v1, :cond_360

    const/16 v58, 0x3

    move/from16 v0, v57

    move/from16 v1, v58

    if-eq v0, v1, :cond_360

    :cond_346
    const/16 v58, 0x2

    move/from16 v0, v38

    move/from16 v1, v58

    if-eq v0, v1, :cond_356

    const/16 v58, 0x2

    move/from16 v0, v57

    move/from16 v1, v58

    if-eq v0, v1, :cond_360

    :cond_356
    if-eqz v57, :cond_362

    const/16 v58, 0x4

    move/from16 v0, v57

    move/from16 v1, v58

    if-eq v0, v1, :cond_362

    .line 1659
    :cond_360
    move/from16 v38, v57

    .line 1661
    :cond_362
    sget-boolean v58, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z
    :try_end_364
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_364} :catch_59

    if-nez v58, :cond_371

    .line 1662
    if-nez v24, :cond_369

    .line 1663
    const/4 v7, 0x0

    .line 1665
    :cond_369
    if-nez v25, :cond_36d

    .line 1666
    const/16 v38, 0x2

    .line 1668
    :cond_36d
    if-nez v23, :cond_7dc

    .line 1669
    const/16 v48, 0x0

    .line 1674
    :cond_371
    :goto_371
    if-eqz v56, :cond_391

    const/16 v58, 0x2

    move/from16 v0, v38

    move/from16 v1, v58

    if-eq v0, v1, :cond_391

    .line 1676
    :try_start_37b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Landroid/media/AudioManager;->getRingerMode()I
    :try_end_384
    .catch Ljava/lang/Exception; {:try_start_37b .. :try_end_384} :catch_7e8

    move-result v36

    .line 1677
    .local v36, "mode":I
    if-eqz v36, :cond_391

    const/16 v58, 0x1

    move/from16 v0, v36

    move/from16 v1, v58

    if-eq v0, v1, :cond_391

    .line 1678
    const/16 v38, 0x2

    .line 1686
    .end local v10    # "custom":Z
    .end local v23    # "inAppPriority":Z
    .end local v24    # "inAppSounds":Z
    .end local v25    # "inAppVibrate":Z
    .end local v36    # "mode":I
    .end local v49    # "priorityOverride":I
    .end local v56    # "vibrateOnlyIfSilent":Z
    .end local v57    # "vibrateOverride":I
    :cond_391
    :goto_391
    :try_start_391
    new-instance v27, Landroid/content/Intent;

    sget-object v58, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v59, Lorg/telegram/ui/LaunchActivity;

    move-object/from16 v0, v27

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1687
    .local v27, "intent":Landroid/content/Intent;
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "com.tmessages.openchat"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v60

    move-object/from16 v0, v58

    move-wide/from16 v1, v60

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v58

    const v59, 0x7fffffff

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v27

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1688
    const v58, 0x8000

    move-object/from16 v0, v27

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1689
    long-to-int v0, v14

    move/from16 v58, v0

    if-eqz v58, :cond_8a9

    .line 1690
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Ljava/util/HashMap;->size()I

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_3f5

    .line 1691
    if-eqz v6, :cond_7ee

    .line 1692
    const-string v58, "chatId"

    move-object/from16 v0, v27

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1697
    :cond_3f5
    :goto_3f5
    const/16 v58, 0x0

    invoke-static/range {v58 .. v58}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v58

    if-nez v58, :cond_401

    sget-boolean v58, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    if-eqz v58, :cond_7fd

    .line 1698
    :cond_401
    const/16 v46, 0x0

    .line 1717
    :cond_403
    :goto_403
    sget-object v58, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/16 v59, 0x0

    const/high16 v60, 0x40000000    # 2.0f

    move-object/from16 v0, v58

    move/from16 v1, v59

    move-object/from16 v2, v27

    move/from16 v3, v60

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 1720
    .local v8, "contentIntent":Landroid/app/PendingIntent;
    const/16 v50, 0x1

    .line 1721
    .local v50, "replace":Z
    long-to-int v0, v14

    move/from16 v58, v0

    if-eqz v58, :cond_43a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Ljava/util/HashMap;->size()I

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-gt v0, v1, :cond_43a

    const/16 v58, 0x0

    invoke-static/range {v58 .. v58}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v58

    if-nez v58, :cond_43a

    sget-boolean v58, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    if-eqz v58, :cond_8d1

    .line 1722
    :cond_43a
    const-string v58, "AppName"

    const v59, 0x7f070092

    invoke-static/range {v58 .. v59}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    .line 1723
    .local v37, "name":Ljava/lang/String;
    const/16 v50, 0x0

    .line 1733
    :goto_445
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Ljava/util/HashMap;->size()I

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_8df

    .line 1734
    const-string v58, "NewMessages"

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    move/from16 v59, v0

    invoke-static/range {v58 .. v59}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 1739
    .local v12, "detailText":Ljava/lang/String;
    :goto_463
    new-instance v58, Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v59, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct/range {v58 .. v59}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 1740
    move-object/from16 v0, v58

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v58

    const v59, 0x7f0201fb

    .line 1741
    invoke-virtual/range {v58 .. v59}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v58

    const/16 v59, 0x1

    .line 1742
    invoke-virtual/range {v58 .. v59}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v58

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    move/from16 v59, v0

    .line 1743
    invoke-virtual/range {v58 .. v59}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v58

    .line 1744
    move-object/from16 v0, v58

    invoke-virtual {v0, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v58

    const-string v59, "messages"

    .line 1745
    invoke-virtual/range {v58 .. v59}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v58

    const/16 v59, 0x1

    .line 1746
    invoke-virtual/range {v58 .. v59}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v58

    const v59, -0xd35a20

    .line 1747
    invoke-virtual/range {v58 .. v59}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v32

    .line 1749
    .local v32, "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v58, "msg"

    move-object/from16 v0, v32

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1750
    if-nez v5, :cond_4e3

    if-eqz v54, :cond_4e3

    move-object/from16 v0, v54

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v58, v0

    if-eqz v58, :cond_4e3

    move-object/from16 v0, v54

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Ljava/lang/String;->length()I

    move-result v58

    if-lez v58, :cond_4e3

    .line 1751
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "tel:+"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v54

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v32

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addPerson(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1754
    :cond_4e3
    const/16 v53, 0x2

    .line 1755
    .local v53, "silent":I
    const/16 v28, 0x0

    .line 1756
    .local v28, "lastMessage":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1757
    .local v19, "hasNewMessages":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Ljava/util/ArrayList;->size()I

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_95c

    .line 1758
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-virtual/range {v58 .. v59}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lorg/telegram/messenger/MessageObject;

    .line 1759
    .local v34, "messageObject":Lorg/telegram/messenger/MessageObject;
    const/16 v58, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v58

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/NotificationsController;->getStringForMessage(Lorg/telegram/messenger/MessageObject;Z)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v33, v28

    .line 1760
    .local v33, "message":Ljava/lang/String;
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    move/from16 v58, v0

    if-eqz v58, :cond_916

    const/16 v53, 0x1

    .line 1761
    :goto_527
    if-eqz v33, :cond_15

    .line 1764
    if-eqz v50, :cond_550

    .line 1765
    if-eqz v5, :cond_91a

    .line 1766
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, " @ "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    const-string v59, ""

    move-object/from16 v0, v33

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v33

    .line 1771
    :cond_550
    :goto_550
    invoke-virtual/range {v32 .. v33}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1772
    new-instance v58, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct/range {v58 .. v58}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    move-object/from16 v0, v58

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v58

    move-object/from16 v0, v32

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1803
    .end local v33    # "message":Ljava/lang/String;
    .end local v34    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :goto_567
    new-instance v17, Landroid/content/Intent;

    sget-object v58, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v59, Lorg/telegram/messenger/NotificationDismissReceiver;

    move-object/from16 v0, v17

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1804
    .local v17, "dismissIntent":Landroid/content/Intent;
    const-string v58, "messageDate"

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v59, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1805
    sget-object v58, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/16 v59, 0x1

    const/high16 v60, 0x8000000

    move-object/from16 v0, v58

    move/from16 v1, v59

    move-object/from16 v2, v17

    move/from16 v3, v60

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v58

    move-object/from16 v0, v32

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1807
    if-eqz v46, :cond_5c9

    .line 1808
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v58

    const/16 v59, 0x0

    const-string v60, "50_50"

    move-object/from16 v0, v58

    move-object/from16 v1, v46

    move-object/from16 v2, v59

    move-object/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->getImageFromMemory(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v21

    .line 1809
    .local v21, "img":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v21, :cond_a63

    .line 1810
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v58

    move-object/from16 v0, v32

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1826
    .end local v21    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :cond_5c9
    :goto_5c9
    if-eqz p1, :cond_5d3

    const/16 v58, 0x1

    move/from16 v0, v53

    move/from16 v1, v58

    if-ne v0, v1, :cond_aad

    .line 1827
    :cond_5d3
    const/16 v58, -0x1

    move-object/from16 v0, v32

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1838
    :cond_5dc
    :goto_5dc
    const/16 v58, 0x1

    move/from16 v0, v53

    move/from16 v1, v58

    if-eq v0, v1, :cond_b3e

    if-nez v40, :cond_b3e

    .line 1839
    sget-boolean v58, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-nez v58, :cond_5ec

    if-eqz v22, :cond_62c

    .line 1840
    :cond_5ec
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v58

    const/16 v59, 0x64

    move/from16 v0, v58

    move/from16 v1, v59

    if-le v0, v1, :cond_625

    .line 1841
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v59, 0x0

    const/16 v60, 0x64

    move-object/from16 v0, v28

    move/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v59

    const/16 v60, 0xa

    const/16 v61, 0x20

    invoke-virtual/range {v59 .. v61}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, "..."

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 1843
    :cond_625
    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1845
    :cond_62c
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Lorg/telegram/messenger/MediaController;->isRecordingAudio()Z

    move-result v58

    if-nez v58, :cond_655

    .line 1846
    if-eqz v7, :cond_655

    const-string v58, "NoSound"

    move-object/from16 v0, v58

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_655

    .line 1847
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_ae0

    .line 1848
    sget-object v58, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    const/16 v59, 0x5

    move-object/from16 v0, v32

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1854
    :cond_655
    :goto_655
    if-eqz v31, :cond_666

    .line 1855
    const/16 v58, 0x3e8

    const/16 v59, 0x3e8

    move-object/from16 v0, v32

    move/from16 v1, v31

    move/from16 v2, v58

    move/from16 v3, v59

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1857
    :cond_666
    const/16 v58, 0x2

    move/from16 v0, v38

    move/from16 v1, v58

    if-eq v0, v1, :cond_678

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Lorg/telegram/messenger/MediaController;->isRecordingAudio()Z

    move-result v58

    if-eqz v58, :cond_af1

    .line 1858
    :cond_678
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [J

    move-object/from16 v58, v0

    fill-array-data v58, :array_b7e

    move-object/from16 v0, v32

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1870
    :cond_68a
    :goto_68a
    sget v58, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v59, 0x18

    move/from16 v0, v58

    move/from16 v1, v59

    if-ge v0, v1, :cond_6e4

    sget-object v58, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual/range {v58 .. v58}, Ljava/lang/String;->length()I

    move-result v58

    if-nez v58, :cond_6e4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->hasMessagesToReply()Z

    move-result v58

    if-eqz v58, :cond_6e4

    .line 1871
    new-instance v51, Landroid/content/Intent;

    sget-object v58, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v59, Lorg/telegram/messenger/PopupReplyReceiver;

    move-object/from16 v0, v51

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1872
    .local v51, "replyIntent":Landroid/content/Intent;
    sget v58, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v59, 0x13

    move/from16 v0, v58

    move/from16 v1, v59

    if-gt v0, v1, :cond_b52

    .line 1873
    const v58, 0x7f0200e9

    const-string v59, "Reply"

    const v60, 0x7f07047f

    invoke-static/range {v59 .. v60}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v59

    sget-object v60, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/16 v61, 0x2

    const/high16 v62, 0x8000000

    move-object/from16 v0, v60

    move/from16 v1, v61

    move-object/from16 v2, v51

    move/from16 v3, v62

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v60

    move-object/from16 v0, v32

    move/from16 v1, v58

    move-object/from16 v2, v59

    move-object/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1878
    .end local v51    # "replyIntent":Landroid/content/Intent;
    :cond_6e4
    :goto_6e4
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/NotificationsController;->showExtraNotifications(Landroid/support/v4/app/NotificationCompat$Builder;Z)V

    .line 1879
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    move-object/from16 v58, v0

    const/16 v59, 0x1

    invoke-virtual/range {v32 .. v32}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v60

    invoke-virtual/range {v58 .. v60}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 1881
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->scheduleNotificationRepeat()V

    goto/16 :goto_15

    .line 1543
    .end local v5    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v6    # "chat_id":I
    .end local v7    # "choosenSoundPath":Ljava/lang/String;
    .end local v8    # "contentIntent":Landroid/app/PendingIntent;
    .end local v11    # "defaultPath":Ljava/lang/String;
    .end local v12    # "detailText":Ljava/lang/String;
    .end local v17    # "dismissIntent":Landroid/content/Intent;
    .end local v19    # "hasNewMessages":Z
    .end local v22    # "inAppPreview":Z
    .end local v27    # "intent":Landroid/content/Intent;
    .end local v28    # "lastMessage":Ljava/lang/String;
    .end local v31    # "ledColor":I
    .end local v32    # "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v37    # "name":Ljava/lang/String;
    .end local v38    # "needVibrate":I
    .end local v40    # "notifyDisabled":Z
    .end local v42    # "notifyOverride":I
    .end local v46    # "photoPath":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v48    # "priority":I
    .end local v50    # "replace":Z
    .end local v53    # "silent":I
    .end local v54    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v55    # "user_id":I
    :cond_701
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    goto/16 :goto_ab

    .line 1547
    .restart local v6    # "chat_id":I
    .restart local v55    # "user_id":I
    :cond_713
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v58

    move/from16 v0, v55

    move/from16 v1, v58

    if-ne v0, v1, :cond_cb

    .line 1548
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v55, v0

    goto/16 :goto_cb

    .line 1582
    .restart local v5    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v7    # "choosenSoundPath":Ljava/lang/String;
    .restart local v22    # "inAppPreview":Z
    .restart local v31    # "ledColor":I
    .restart local v38    # "needVibrate":I
    .restart local v40    # "notifyDisabled":Z
    .restart local v42    # "notifyOverride":I
    .restart local v46    # "photoPath":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .restart local v48    # "priority":I
    .restart local v54    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_72b
    const/16 v41, 0x2

    .line 1583
    .restart local v41    # "notifyMaxCount":I
    const/16 v39, 0xb4

    .restart local v39    # "notifyDelay":I
    goto/16 :goto_19b

    .line 1591
    .restart local v13    # "dialogInfo":Landroid/graphics/Point;
    :cond_731
    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    .line 1592
    .local v30, "lastTime":I
    add-int v58, v30, v39

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    const-wide/16 v62, 0x3e8

    div-long v60, v60, v62

    cmp-long v58, v58, v60

    if-gez v58, :cond_760

    .line 1593
    const/16 v58, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    const-wide/16 v62, 0x3e8

    div-long v60, v60, v62

    move-wide/from16 v0, v60

    long-to-int v0, v0

    move/from16 v59, v0

    move/from16 v0, v58

    move/from16 v1, v59

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_1d8

    .line 1595
    :cond_760
    iget v9, v13, Landroid/graphics/Point;->x:I

    .line 1596
    .local v9, "count":I
    move/from16 v0, v41

    if-ge v9, v0, :cond_77e

    .line 1597
    add-int/lit8 v58, v9, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    const-wide/16 v62, 0x3e8

    div-long v60, v60, v62

    move-wide/from16 v0, v60

    long-to-int v0, v0

    move/from16 v59, v0

    move/from16 v0, v58

    move/from16 v1, v59

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_1d8

    .line 1599
    :cond_77e
    const/16 v40, 0x1

    goto/16 :goto_1d8

    .line 1618
    .end local v9    # "count":I
    .end local v13    # "dialogInfo":Landroid/graphics/Point;
    .end local v30    # "lastTime":I
    .end local v39    # "notifyDelay":I
    .end local v41    # "notifyMaxCount":I
    .restart local v10    # "custom":Z
    .restart local v11    # "defaultPath":Ljava/lang/String;
    .restart local v23    # "inAppPriority":Z
    .restart local v24    # "inAppSounds":Z
    .restart local v25    # "inAppVibrate":Z
    :cond_782
    const/16 v57, 0x0

    .line 1619
    .restart local v57    # "vibrateOverride":I
    const/16 v49, 0x3

    .line 1620
    .restart local v49    # "priorityOverride":I
    const/4 v7, 0x0

    goto/16 :goto_29e

    .line 1628
    .restart local v56    # "vibrateOnlyIfSilent":Z
    :cond_789
    if-nez v7, :cond_2ab

    .line 1629
    const-string v58, "GroupSoundPath"

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2ab

    .line 1634
    :cond_797
    if-eqz v55, :cond_2d6

    .line 1635
    if-eqz v7, :cond_7cf

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_7cf

    .line 1636
    const/4 v7, 0x0

    .line 1640
    :cond_7a2
    :goto_7a2
    const-string v58, "vibrate_messages"

    const/16 v59, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v38

    .line 1641
    const-string v58, "priority_group"

    const/16 v59, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v48

    .line 1642
    const-string v58, "MessagesLed"

    const v59, -0xffff01

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v31

    goto/16 :goto_2d6

    .line 1637
    :cond_7cf
    if-nez v7, :cond_7a2

    .line 1638
    const-string v58, "GlobalSoundPath"

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_7a2

    .line 1670
    :cond_7dc
    const/16 v58, 0x2

    move/from16 v0, v48

    move/from16 v1, v58

    if-ne v0, v1, :cond_371

    .line 1671
    const/16 v48, 0x1

    goto/16 :goto_371

    .line 1680
    :catch_7e8
    move-exception v18

    .line 1681
    .restart local v18    # "e":Ljava/lang/Exception;
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_391

    .line 1693
    .end local v10    # "custom":Z
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v23    # "inAppPriority":Z
    .end local v24    # "inAppSounds":Z
    .end local v25    # "inAppVibrate":Z
    .end local v49    # "priorityOverride":I
    .end local v56    # "vibrateOnlyIfSilent":Z
    .end local v57    # "vibrateOverride":I
    .restart local v27    # "intent":Landroid/content/Intent;
    :cond_7ee
    if-eqz v55, :cond_3f5

    .line 1694
    const-string v58, "userId"

    move-object/from16 v0, v27

    move-object/from16 v1, v58

    move/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3f5

    .line 1700
    :cond_7fd
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Ljava/util/HashMap;->size()I

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_403

    .line 1701
    if-eqz v5, :cond_857

    .line 1702
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v58, v0

    if-eqz v58, :cond_403

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v58, v0

    if-eqz v58, :cond_403

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-wide/from16 v58, v0

    const-wide/16 v60, 0x0

    cmp-long v58, v58, v60

    if-eqz v58, :cond_403

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    move/from16 v58, v0

    if-eqz v58, :cond_403

    .line 1703
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v46, v0

    goto/16 :goto_403

    .line 1705
    :cond_857
    if-eqz v54, :cond_403

    .line 1706
    move-object/from16 v0, v54

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v58, v0

    if-eqz v58, :cond_403

    move-object/from16 v0, v54

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v58, v0

    if-eqz v58, :cond_403

    move-object/from16 v0, v54

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-wide/from16 v58, v0

    const-wide/16 v60, 0x0

    cmp-long v58, v58, v60

    if-eqz v58, :cond_403

    move-object/from16 v0, v54

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    move/from16 v58, v0

    if-eqz v58, :cond_403

    .line 1707
    move-object/from16 v0, v54

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v46, v0

    goto/16 :goto_403

    .line 1713
    :cond_8a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Ljava/util/HashMap;->size()I

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_403

    .line 1714
    const-string v58, "encId"

    const/16 v59, 0x20

    shr-long v60, v14, v59

    move-wide/from16 v0, v60

    long-to-int v0, v0

    move/from16 v59, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_403

    .line 1725
    .restart local v8    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v50    # "replace":Z
    :cond_8d1
    if-eqz v5, :cond_8d9

    .line 1726
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v37, v0

    .restart local v37    # "name":Ljava/lang/String;
    goto/16 :goto_445

    .line 1728
    .end local v37    # "name":Ljava/lang/String;
    :cond_8d9
    invoke-static/range {v54 .. v54}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v37

    .restart local v37    # "name":Ljava/lang/String;
    goto/16 :goto_445

    .line 1736
    :cond_8df
    const-string v58, "NotificationMessagesPeopleDisplayOrder"

    const v59, 0x7f0703b9

    const/16 v60, 0x2

    move/from16 v0, v60

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v60, v0

    const/16 v61, 0x0

    const-string v62, "NewMessages"

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    move/from16 v63, v0

    invoke-static/range {v62 .. v63}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v62

    aput-object v62, v60, v61

    const/16 v61, 0x1

    const-string v62, "FromChats"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->size()I

    move-result v63

    invoke-static/range {v62 .. v63}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v62

    aput-object v62, v60, v61

    invoke-static/range {v58 .. v60}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "detailText":Ljava/lang/String;
    goto/16 :goto_463

    .line 1760
    .restart local v19    # "hasNewMessages":Z
    .restart local v28    # "lastMessage":Ljava/lang/String;
    .restart local v32    # "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v33    # "message":Ljava/lang/String;
    .restart local v34    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .restart local v53    # "silent":I
    :cond_916
    const/16 v53, 0x0

    goto/16 :goto_527

    .line 1768
    :cond_91a
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v58

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, ": "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    const-string v59, ""

    move-object/from16 v0, v33

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v58

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v59

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    const-string v60, ""

    invoke-virtual/range {v58 .. v60}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_550

    .line 1774
    .end local v33    # "message":Ljava/lang/String;
    .end local v34    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_95c
    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1775
    new-instance v26, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct/range {v26 .. v26}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 1776
    .local v26, "inboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 1777
    const/16 v58, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    move-object/from16 v59, v0

    invoke-virtual/range {v59 .. v59}, Ljava/util/ArrayList;->size()I

    move-result v59

    invoke-static/range {v58 .. v59}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1778
    .restart local v9    # "count":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_97f
    move/from16 v0, v20

    if-ge v0, v9, :cond_a55

    .line 1779
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lorg/telegram/messenger/MessageObject;

    .line 1780
    .restart local v34    # "messageObject":Lorg/telegram/messenger/MessageObject;
    const/16 v58, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v58

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/NotificationsController;->getStringForMessage(Lorg/telegram/messenger/MessageObject;Z)Ljava/lang/String;

    move-result-object v33

    .line 1781
    .restart local v33    # "message":Ljava/lang/String;
    if-eqz v33, :cond_9b3

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v58, v0

    move/from16 v0, v58

    move/from16 v1, v16

    if-gt v0, v1, :cond_9b6

    .line 1778
    :cond_9b3
    :goto_9b3
    add-int/lit8 v20, v20, 0x1

    goto :goto_97f

    .line 1784
    :cond_9b6
    const/16 v58, 0x2

    move/from16 v0, v53

    move/from16 v1, v58

    if-ne v0, v1, :cond_9d0

    .line 1785
    move-object/from16 v28, v33

    .line 1786
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    move/from16 v58, v0

    if-eqz v58, :cond_a11

    const/16 v53, 0x1

    .line 1788
    :cond_9d0
    :goto_9d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Ljava/util/HashMap;->size()I

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_a09

    .line 1789
    if-eqz v50, :cond_a09

    .line 1790
    if-eqz v5, :cond_a14

    .line 1791
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, " @ "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    const-string v59, ""

    move-object/from16 v0, v33

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v33

    .line 1797
    :cond_a09
    :goto_a09
    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    goto :goto_9b3

    .line 1786
    :cond_a11
    const/16 v53, 0x0

    goto :goto_9d0

    .line 1793
    :cond_a14
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v58

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, ": "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    const-string v59, ""

    move-object/from16 v0, v33

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v58

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v59

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    const-string v60, ""

    invoke-virtual/range {v58 .. v60}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v33

    goto :goto_a09

    .line 1799
    .end local v33    # "message":Ljava/lang/String;
    .end local v34    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_a55
    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 1800
    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_a61
    .catch Ljava/lang/Exception; {:try_start_391 .. :try_end_a61} :catch_59

    goto/16 :goto_567

    .line 1813
    .end local v9    # "count":I
    .end local v20    # "i":I
    .end local v26    # "inboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    .restart local v17    # "dismissIntent":Landroid/content/Intent;
    .restart local v21    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :cond_a63
    const/high16 v58, 0x43200000    # 160.0f

    const/high16 v59, 0x42480000    # 50.0f

    :try_start_a67
    invoke-static/range {v59 .. v59}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v59

    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v59, v0

    div-float v52, v58, v59

    .line 1814
    .local v52, "scaleFactor":F
    new-instance v43, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v43 .. v43}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1815
    .local v43, "options":Landroid/graphics/BitmapFactory$Options;
    const/high16 v58, 0x3f800000    # 1.0f

    cmpg-float v58, v52, v58

    if-gez v58, :cond_aa7

    const/16 v58, 0x1

    :goto_a7f
    move/from16 v0, v58

    move-object/from16 v1, v43

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1816
    const/16 v58, 0x1

    move-object/from16 v0, v46

    move/from16 v1, v58

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1817
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_5c9

    .line 1818
    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_aa2
    .catch Ljava/lang/Throwable; {:try_start_a67 .. :try_end_aa2} :catch_aa4
    .catch Ljava/lang/Exception; {:try_start_a67 .. :try_end_aa2} :catch_59

    goto/16 :goto_5c9

    .line 1820
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v43    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v52    # "scaleFactor":F
    :catch_aa4
    move-exception v58

    goto/16 :goto_5c9

    .line 1815
    .restart local v43    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v52    # "scaleFactor":F
    :cond_aa7
    move/from16 v0, v52

    float-to-int v0, v0

    move/from16 v58, v0

    goto :goto_a7f

    .line 1829
    .end local v21    # "img":Landroid/graphics/drawable/BitmapDrawable;
    .end local v43    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v52    # "scaleFactor":F
    :cond_aad
    if-nez v48, :cond_aba

    .line 1830
    const/16 v58, 0x0

    :try_start_ab1
    move-object/from16 v0, v32

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_5dc

    .line 1831
    :cond_aba
    const/16 v58, 0x1

    move/from16 v0, v48

    move/from16 v1, v58

    if-ne v0, v1, :cond_acd

    .line 1832
    const/16 v58, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_5dc

    .line 1833
    :cond_acd
    const/16 v58, 0x2

    move/from16 v0, v48

    move/from16 v1, v58

    if-ne v0, v1, :cond_5dc

    .line 1834
    const/16 v58, 0x2

    move-object/from16 v0, v32

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_5dc

    .line 1850
    :cond_ae0
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v58

    const/16 v59, 0x5

    move-object/from16 v0, v32

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_655

    .line 1859
    :cond_af1
    const/16 v58, 0x1

    move/from16 v0, v38

    move/from16 v1, v58

    if-ne v0, v1, :cond_b0d

    .line 1860
    const/16 v58, 0x4

    move/from16 v0, v58

    new-array v0, v0, [J

    move-object/from16 v58, v0

    fill-array-data v58, :array_b8a

    move-object/from16 v0, v32

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_68a

    .line 1861
    :cond_b0d
    if-eqz v38, :cond_b17

    const/16 v58, 0x4

    move/from16 v0, v38

    move/from16 v1, v58

    if-ne v0, v1, :cond_b22

    .line 1862
    :cond_b17
    const/16 v58, 0x2

    move-object/from16 v0, v32

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_68a

    .line 1863
    :cond_b22
    const/16 v58, 0x3

    move/from16 v0, v38

    move/from16 v1, v58

    if-ne v0, v1, :cond_68a

    .line 1864
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [J

    move-object/from16 v58, v0

    fill-array-data v58, :array_b9e

    move-object/from16 v0, v32

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_68a

    .line 1867
    :cond_b3e
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [J

    move-object/from16 v58, v0

    fill-array-data v58, :array_baa

    move-object/from16 v0, v32

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_68a

    .line 1875
    .restart local v51    # "replyIntent":Landroid/content/Intent;
    :cond_b52
    const v58, 0x7f0200e8

    const-string v59, "Reply"

    const v60, 0x7f07047f

    invoke-static/range {v59 .. v60}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v59

    sget-object v60, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/16 v61, 0x2

    const/high16 v62, 0x8000000

    move-object/from16 v0, v60

    move/from16 v1, v61

    move-object/from16 v2, v51

    move/from16 v3, v62

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v60

    move-object/from16 v0, v32

    move/from16 v1, v58

    move-object/from16 v2, v59

    move-object/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_b7b
    .catch Ljava/lang/Exception; {:try_start_ab1 .. :try_end_b7b} :catch_59

    goto/16 :goto_6e4

    .line 1858
    nop

    :array_b7e
    .array-data 8
        0x0
        0x0
    .end array-data

    .line 1860
    :array_b8a
    .array-data 8
        0x0
        0x64
        0x0
        0x64
    .end array-data

    .line 1864
    :array_b9e
    .array-data 8
        0x0
        0x3e8
    .end array-data

    .line 1867
    :array_baa
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public static updateServerNotificationsSettings(J)V
    .registers 10
    .param p0, "dialog_id"    # J

    .prologue
    const/4 v4, 0x0

    .line 2151
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2152
    long-to-int v3, p0

    if-nez v3, :cond_10

    .line 2175
    :goto_f
    return-void

    .line 2155
    :cond_10
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "Notifications"

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2156
    .local v1, "preferences":Landroid/content/SharedPreferences;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;-><init>()V

    .line 2157
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    .line 2158
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    const-string v5, "default"

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->sound:Ljava/lang/String;

    .line 2159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify2_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2160
    .local v0, "mute_type":I
    const/4 v3, 0x3

    if-ne v0, v3, :cond_b6

    .line 2161
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyuntil_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->mute_until:I

    .line 2165
    :goto_5f
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preview_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->show_previews:Z

    .line 2166
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "silent_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->silent:Z

    .line 2167
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;

    .line 2168
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;

    long-to-int v4, p0

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2169
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/NotificationsController$17;

    invoke-direct {v4}, Lorg/telegram/messenger/NotificationsController$17;-><init>()V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_f

    .line 2163
    :cond_b6
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    const/4 v3, 0x2

    if-eq v0, v3, :cond_bf

    move v3, v4

    :goto_bc
    iput v3, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->mute_until:I

    goto :goto_5f

    :cond_bf
    const v3, 0x7fffffff

    goto :goto_bc
.end method


# virtual methods
.method public cleanup()V
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 146
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->popupReplyMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 147
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/NotificationsController$2;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method

.method protected forceShowPopupForReply()V
    .registers 3

    .prologue
    .line 342
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$6;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/NotificationsController$6;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 371
    return-void
.end method

.method public hasMessagesToReply()Z
    .registers 6

    .prologue
    .line 207
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_39

    .line 208
    iget-object v4, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 209
    .local v1, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    .line 210
    .local v2, "dialog_id":J
    iget-object v4, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    if-eqz v4, :cond_23

    iget-object v4, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    if-nez v4, :cond_34

    :cond_23
    long-to-int v4, v2

    if-eqz v4, :cond_34

    iget-object v4, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_37

    .line 211
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v4

    if-nez v4, :cond_37

    .line 207
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 214
    :cond_37
    const/4 v4, 0x1

    .line 216
    .end local v1    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v2    # "dialog_id":J
    :goto_38
    return v4

    :cond_39
    const/4 v4, 0x0

    goto :goto_38
.end method

.method public playOutChatSound()V
    .registers 4

    .prologue
    .line 2099
    iget-boolean v1, p0, Lorg/telegram/messenger/NotificationsController;->inChatSoundEnabled:Z

    if-eqz v1, :cond_e

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->isRecordingAudio()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2148
    :cond_e
    :goto_e
    return-void

    .line 2103
    :cond_f
    :try_start_f
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_22

    move-result v1

    if-eqz v1, :cond_e

    .line 2109
    :goto_17
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/NotificationsController$16;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/NotificationsController$16;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_e

    .line 2106
    :catch_22
    move-exception v0

    .line 2107
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_17
.end method

.method public processDialogsUpdateRead(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 647
    .local p1, "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x0

    .line 648
    .local v0, "popupArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :goto_9
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/NotificationsController$10;

    invoke-direct {v2, p0, p1, v0}, Lorg/telegram/messenger/NotificationsController$10;-><init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 735
    return-void

    .line 647
    .end local v0    # "popupArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_9
.end method

.method public processLoadedUnreadMessages(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "dialogs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .local p2, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .local p3, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .local p4, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .local p5, "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    const/4 v1, 0x1

    .line 738
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p3, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 739
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p4, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 740
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p5, v1}, Lorg/telegram/messenger/MessagesController;->putEncryptedChats(Ljava/util/ArrayList;Z)V

    .line 742
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$11;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/NotificationsController$11;-><init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 824
    return-void
.end method

.method public processNewMessages(Ljava/util/ArrayList;Z)V
    .registers 6
    .param p2, "isLast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 537
    .local p1, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 644
    :goto_6
    return-void

    .line 540
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 541
    .local v0, "popupArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/NotificationsController$9;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/telegram/messenger/NotificationsController$9;-><init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 643
    sget-object v1, Lorg/telegram/messenger/NotificationsController;->listofdialogs:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweringMachine;->ProcessMsgs(Ljava/util/ArrayList;)V

    goto :goto_6
.end method

.method public processReadMessages(Landroid/util/SparseArray;JIIZ)V
    .registers 17
    .param p2, "dialog_id"    # J
    .param p4, "max_date"    # I
    .param p5, "max_id"    # I
    .param p6, "isPopup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;JIIZ)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, "inbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v2, 0x0

    .line 449
    .local v2, "popupArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :goto_9
    iget-object v9, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/NotificationsController$8;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p5

    move v7, p4

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/NotificationsController$8;-><init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;Landroid/util/SparseArray;JIIZ)V

    invoke-virtual {v9, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 534
    return-void

    .line 448
    .end local v2    # "popupArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_1b
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_9
.end method

.method public removeDeletedMessagesFromNotifications(Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, "deletedMessages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x0

    .line 375
    .local v0, "popupArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :goto_9
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/NotificationsController$7;

    invoke-direct {v2, p0, p1, v0}, Lorg/telegram/messenger/NotificationsController$7;-><init>(Lorg/telegram/messenger/NotificationsController;Landroid/util/SparseArray;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 445
    return-void

    .line 374
    .end local v0    # "popupArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_9
.end method

.method public removeNotificationsForDialog(J)V
    .registers 12
    .param p1, "did"    # J

    .prologue
    const/4 v4, 0x0

    .line 200
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    const/4 v1, 0x0

    const v5, 0x7fffffff

    move-wide v2, p1

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/NotificationsController;->processReadMessages(Landroid/util/SparseArray;JIIZ)V

    .line 201
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 202
    .local v7, "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/NotificationsController;->processDialogsUpdateRead(Ljava/util/HashMap;)V

    .line 204
    return-void
.end method

.method protected repeatNotificationMaybe()V
    .registers 3

    .prologue
    .line 1507
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$15;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/NotificationsController$15;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1519
    return-void
.end method

.method public setBadgeEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 827
    if-eqz p1, :cond_8

    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    :goto_4
    invoke-direct {p0, v0}, Lorg/telegram/messenger/NotificationsController;->setBadge(I)V

    .line 828
    return-void

    .line 827
    :cond_8
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public setInChatSoundEnabled(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Lorg/telegram/messenger/NotificationsController;->inChatSoundEnabled:Z

    .line 178
    return-void
.end method

.method public setLastOnlineFromOtherDevice(I)V
    .registers 4
    .param p1, "time"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/NotificationsController$4;-><init>(Lorg/telegram/messenger/NotificationsController;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method

.method public setOpenedDialogId(J)V
    .registers 6
    .param p1, "dialog_id"    # J

    .prologue
    .line 181
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/NotificationsController$3;-><init>(Lorg/telegram/messenger/NotificationsController;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method

.method protected showSingleBackgroundNotification()V
    .registers 3

    .prologue
    .line 220
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$5;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/NotificationsController$5;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 339
    return-void
.end method
