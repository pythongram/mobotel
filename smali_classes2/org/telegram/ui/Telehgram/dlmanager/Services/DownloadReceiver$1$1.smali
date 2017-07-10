.class Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver$1$1;
.super Ljava/lang/Object;
.source "DownloadReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver$1;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver$1;

    .prologue
    .line 148
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver$1$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 151
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "mainconfig"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 152
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "download_running"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 153
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver$1$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver$1;

    iget-object v4, v4, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver$1;->val$messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 154
    .local v1, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver$1$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver$1;

    iget-object v5, v5, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver$1;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->getDownloadObject(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 155
    .local v0, "attach":Lorg/telegram/tgnet/TLObject;
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver$1$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver$1;

    iget-object v5, v5, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver$1;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;

    # invokes: Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->loadFile(Lorg/telegram/tgnet/TLObject;)V
    invoke-static {v5, v0}, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->access$000(Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;Lorg/telegram/tgnet/TLObject;)V

    .line 156
    iget-object v5, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v2

    .line 157
    .local v2, "pathToMessage":Ljava/io/File;
    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1f

    .line 158
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver$1$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver$1;

    iget-object v6, v6, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver$1;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MediaController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 162
    .end local v0    # "attach":Lorg/telegram/tgnet/TLObject;
    .end local v1    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v2    # "pathToMessage":Ljava/io/File;
    :cond_57
    return-void
.end method
