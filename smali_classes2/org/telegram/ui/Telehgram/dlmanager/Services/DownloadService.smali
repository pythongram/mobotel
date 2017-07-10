.class public Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"

# interfaces
.implements Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;


# instance fields
.field private messageObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadService;->messageObjects:Ljava/util/ArrayList;

    return-void
.end method

.method private cancelDownloading()V
    .registers 5

    .prologue
    .line 118
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadService;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_35

    .line 119
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadService;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 120
    .local v2, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v2, :cond_24

    .line 121
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadService;->getDownloadObject(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 122
    .local v0, "attach":Lorg/telegram/tgnet/TLObject;
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v3, :cond_27

    .line 123
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .end local v0    # "attach":Lorg/telegram/tgnet/TLObject;
    invoke-virtual {v3, v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 118
    :cond_24
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 124
    .restart local v0    # "attach":Lorg/telegram/tgnet/TLObject;
    :cond_27
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_24

    .line 125
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    .end local v0    # "attach":Lorg/telegram/tgnet/TLObject;
    invoke-virtual {v3, v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_24

    .line 129
    .end local v2    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_35
    return-void
.end method

.method private loadFile(Lorg/telegram/tgnet/TLObject;)V
    .registers 5
    .param p1, "attach"    # Lorg/telegram/tgnet/TLObject;

    .prologue
    const/4 v2, 0x0

    .line 98
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v0, :cond_10

    .line 99
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .end local p1    # "attach":Lorg/telegram/tgnet/TLObject;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;Ljava/lang/String;Z)V

    .line 103
    :cond_f
    :goto_f
    return-void

    .line 100
    .restart local p1    # "attach":Lorg/telegram/tgnet/TLObject;
    :cond_10
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_f

    .line 101
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Document;

    .end local p1    # "attach":Lorg/telegram/tgnet/TLObject;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto :goto_f
.end method

.method private startDownloading(Ljava/util/ArrayList;)V
    .registers 7
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
    .line 106
    .local p1, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 107
    .local v1, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadService;->getDownloadObject(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 108
    .local v0, "attach":Lorg/telegram/tgnet/TLObject;
    invoke-direct {p0, v0}, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadService;->loadFile(Lorg/telegram/tgnet/TLObject;)V

    .line 109
    iget-object v4, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v2

    .line 110
    .local v2, "pathToMessage":Ljava/io/File;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 111
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Lorg/telegram/messenger/MediaController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 115
    .end local v0    # "attach":Lorg/telegram/tgnet/TLObject;
    .end local v1    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v2    # "pathToMessage":Ljava/io/File;
    :cond_30
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
    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v0, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadService$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadService$1;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadService;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 177
    return-object v0
.end method

.method public getDownloadObject(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLObject;
    .registers 5
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 79
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 80
    .local v0, "media":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    if-eqz v0, :cond_46

    .line 81
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_d

    .line 82
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 94
    :goto_c
    return-object v1

    .line 84
    :cond_d
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_1c

    .line 85
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_c

    .line 87
    :cond_1c
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v1, :cond_35

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v1, :cond_35

    .line 88
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    goto :goto_c

    .line 90
    :cond_35
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v1, :cond_46

    .line 91
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    goto :goto_c

    .line 94
    :cond_46
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    goto :goto_c
.end method

.method public getObserverTag()I
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 31
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadService;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadService;->DM_LoadMessages()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 32
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 50
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadService;->cancelDownloading()V

    .line 51
    return-void
.end method

.method public onFailedDownload(Ljava/lang/String;)V
    .registers 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 56
    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;F)V
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "progress"    # F

    .prologue
    .line 66
    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;FZ)V
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "progress"    # F
    .param p3, "isEncrypted"    # Z

    .prologue
    .line 71
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadService;->messageObjects:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadService;->startDownloading(Ljava/util/ArrayList;)V

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadService;->messageObjects:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadService;->startDownloading(Ljava/util/ArrayList;)V

    .line 61
    return-void
.end method
