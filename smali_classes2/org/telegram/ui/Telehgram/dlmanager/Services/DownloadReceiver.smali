.class public Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;
.super Landroid/support/v4/content/WakefulBroadcastReceiver;
.source "DownloadReceiver.java"

# interfaces
.implements Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;


# instance fields
.field mAlarmManager:Landroid/app/AlarmManager;

.field mPendingIntent:Landroid/app/PendingIntent;

.field mPendingIntent_end:Landroid/app/PendingIntent;

.field messageObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private storageQueue:Lorg/telegram/messenger/DispatchQueue;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/content/WakefulBroadcastReceiver;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->messageObjects:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->DM_LoadMessages()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->messageObjects:Ljava/util/ArrayList;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;Lorg/telegram/tgnet/TLObject;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLObject;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->loadFile(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method private loadFile(Lorg/telegram/tgnet/TLObject;)V
    .registers 5
    .param p1, "attach"    # Lorg/telegram/tgnet/TLObject;

    .prologue
    const/4 v2, 0x0

    .line 137
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v0, :cond_10

    .line 138
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .end local p1    # "attach":Lorg/telegram/tgnet/TLObject;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;Ljava/lang/String;Z)V

    .line 142
    :cond_f
    :goto_f
    return-void

    .line 139
    .restart local p1    # "attach":Lorg/telegram/tgnet/TLObject;
    :cond_10
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_f

    .line 140
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Document;

    .end local p1    # "attach":Lorg/telegram/tgnet/TLObject;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto :goto_f
.end method

.method private startDownloading(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver$1;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 166
    return-void
.end method

.method private stopDownloading(Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v6, 0x0

    .line 169
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "mainconfig"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 170
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "download_running"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 171
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_47

    .line 172
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 173
    .local v2, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v2, :cond_36

    .line 174
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->getDownloadObject(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 175
    .local v0, "attach":Lorg/telegram/tgnet/TLObject;
    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_39

    .line 176
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .end local v0    # "attach":Lorg/telegram/tgnet/TLObject;
    invoke-virtual {v4, v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 171
    :cond_36
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 177
    .restart local v0    # "attach":Lorg/telegram/tgnet/TLObject;
    :cond_39
    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_36

    .line 178
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    .end local v0    # "attach":Lorg/telegram/tgnet/TLObject;
    invoke-virtual {v4, v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_36

    .line 183
    .end local v2    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_47
    return-void
.end method


# virtual methods
.method public DM_LoadMessages()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v0, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver$2;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver$2;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 231
    return-object v0
.end method

.method public cancelAlarm(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 103
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->mAlarmManager:Landroid/app/AlarmManager;

    .line 104
    const/16 v1, 0x64

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v1, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->mPendingIntent:Landroid/app/PendingIntent;

    .line 105
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 106
    const/16 v1, 0xc8

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v1, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->mPendingIntent_end:Landroid/app/PendingIntent;

    .line 107
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->mPendingIntent_end:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 108
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_38
    const/16 v1, 0x8

    if-ge v0, v1, :cond_6d

    .line 109
    add-int/lit16 v1, v0, 0x12c

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v1, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->mPendingIntent:Landroid/app/PendingIntent;

    .line 110
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 111
    add-int/lit16 v1, v0, 0x12c

    add-int/lit8 v1, v1, 0xa

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v1, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->mPendingIntent_end:Landroid/app/PendingIntent;

    .line 112
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->mPendingIntent_end:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 114
    :cond_6d
    return-void
.end method

.method public getDownloadObject(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLObject;
    .registers 5
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 118
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 119
    .local v0, "media":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    if-eqz v0, :cond_46

    .line 120
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_d

    .line 121
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 133
    :goto_c
    return-object v1

    .line 123
    :cond_d
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_1c

    .line 124
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_c

    .line 126
    :cond_1c
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v1, :cond_35

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v1, :cond_35

    .line 127
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    goto :goto_c

    .line 129
    :cond_35
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v1, :cond_46

    .line 130
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    goto :goto_c

    .line 133
    :cond_46
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    goto :goto_c
.end method

.method public getObserverTag()I
    .registers 2

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public onFailedDownload(Ljava/lang/String;)V
    .registers 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 237
    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;F)V
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "progress"    # F

    .prologue
    .line 247
    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;FZ)V
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "progress"    # F
    .param p3, "isEncrypted"    # Z

    .prologue
    .line 252
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 46
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "mainconfig"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 47
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v4, "download_receiver"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 48
    .local v0, "dr":Z
    if-nez v0, :cond_12

    .line 70
    :goto_11
    return-void

    .line 51
    :cond_12
    const-string v4, "wifi"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 52
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    const-string v4, "start_end"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 54
    .local v1, "intExtra":I
    const/16 v4, 0x3e8

    if-ne v1, v4, :cond_39

    .line 55
    const-string v4, "download_ewifi"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 56
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 58
    :cond_30
    invoke-static {p1}, Lorg/telegram/ui/Telehgram/dlmanager/Services/WakeLocker;->acquire(Landroid/content/Context;)V

    .line 60
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->messageObjects:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->startDownloading(Ljava/util/ArrayList;)V

    goto :goto_11

    .line 62
    :cond_39
    const-string v4, "download_dwifi"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 63
    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 66
    :cond_44
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->messageObjects:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->stopDownloading(Ljava/util/ArrayList;)V

    .line 68
    invoke-static {}, Lorg/telegram/ui/Telehgram/dlmanager/Services/WakeLocker;->release()V

    goto :goto_11
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->messageObjects:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->startDownloading(Ljava/util/ArrayList;)V

    .line 242
    return-void
.end method

.method public setAlarm(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;I)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .param p3, "calendar2"    # Ljava/util/Calendar;
    .param p4, "i"    # I

    .prologue
    const/high16 v10, 0x8000000

    const/16 v9, 0xc8

    const/16 v4, 0x64

    const/4 v8, 0x2

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "Reminder_ID"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    const-string v2, "start_end"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    invoke-static {p1, v4, v0, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->mPendingIntent:Landroid/app/PendingIntent;

    .line 78
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->mAlarmManager:Landroid/app/AlarmManager;

    .line 79
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v4, v6

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v8, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 81
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v1, "intent2":Landroid/content/Intent;
    const-string v2, "Reminder_ID"

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    const-string v2, "start_end"

    const/16 v3, 0x384

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    invoke-static {p1, v9, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->mPendingIntent_end:Landroid/app/PendingIntent;

    .line 85
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v4, v6

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->mPendingIntent_end:Landroid/app/PendingIntent;

    invoke-virtual {v2, v8, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 86
    return-void
.end method

.method public setRepeatAlarm(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;I)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .param p3, "calendar2"    # Ljava/util/Calendar;
    .param p4, "i"    # I

    .prologue
    const-wide/32 v4, 0x240c8400

    const/high16 v10, 0x8000000

    const/4 v1, 0x2

    .line 89
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;

    invoke-direct {v7, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "start_end"

    const/16 v2, 0x3e8

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    invoke-static {p1, p4, v7, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->mPendingIntent:Landroid/app/PendingIntent;

    .line 93
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->mAlarmManager:Landroid/app/AlarmManager;

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    sub-long/2addr v2, v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long/2addr v2, v8

    iget-object v6, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 96
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "intent":Landroid/content/Intent;
    const-class v0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;

    invoke-direct {v7, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v0, "start_end"

    const/16 v2, 0x384

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    add-int/lit8 v0, p4, 0xa

    invoke-static {p1, v0, v7, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->mPendingIntent_end:Landroid/app/PendingIntent;

    .line 99
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    sub-long/2addr v2, v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long/2addr v2, v8

    iget-object v6, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->mPendingIntent_end:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 100
    return-void
.end method
