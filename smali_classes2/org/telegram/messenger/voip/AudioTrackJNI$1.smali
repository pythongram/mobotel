.class Lorg/telegram/messenger/voip/AudioTrackJNI$1;
.super Ljava/lang/Object;
.source "AudioTrackJNI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/voip/AudioTrackJNI;->startThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/voip/AudioTrackJNI;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/voip/AudioTrackJNI;

    .prologue
    .line 80
    iput-object p1, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 84
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    # getter for: Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;
    invoke-static {v2}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$000(Lorg/telegram/messenger/voip/AudioTrackJNI;)Landroid/media/AudioTrack;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_47

    .line 89
    :cond_9
    :goto_9
    iget-object v2, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    # getter for: Lorg/telegram/messenger/voip/AudioTrackJNI;->running:Z
    invoke-static {v2}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$100(Lorg/telegram/messenger/voip/AudioTrackJNI;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 91
    :try_start_11
    iget-object v2, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    # getter for: Lorg/telegram/messenger/voip/AudioTrackJNI;->buffer:[B
    invoke-static {v3}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$200(Lorg/telegram/messenger/voip/AudioTrackJNI;)[B

    move-result-object v3

    # invokes: Lorg/telegram/messenger/voip/AudioTrackJNI;->nativeCallback([B)V
    invoke-static {v2, v3}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$300(Lorg/telegram/messenger/voip/AudioTrackJNI;[B)V

    .line 92
    iget-object v2, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    # getter for: Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;
    invoke-static {v2}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$000(Lorg/telegram/messenger/voip/AudioTrackJNI;)Landroid/media/AudioTrack;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    # getter for: Lorg/telegram/messenger/voip/AudioTrackJNI;->buffer:[B
    invoke-static {v3}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$200(Lorg/telegram/messenger/voip/AudioTrackJNI;)[B

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x780

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioTrack;->write([BII)I

    .line 93
    iget-object v2, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    # getter for: Lorg/telegram/messenger/voip/AudioTrackJNI;->running:Z
    invoke-static {v2}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$100(Lorg/telegram/messenger/voip/AudioTrackJNI;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 94
    iget-object v2, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    # getter for: Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;
    invoke-static {v2}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$000(Lorg/telegram/messenger/voip/AudioTrackJNI;)Landroid/media/AudioTrack;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioTrack;->stop()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3f} :catch_4e

    .line 101
    :cond_3f
    const-string v2, "tg-voip"

    const-string v3, "audiotrack thread exits"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_46
    return-void

    .line 85
    :catch_47
    move-exception v1

    .line 86
    .local v1, "x":Ljava/lang/Exception;
    const-string v2, "error starting AudioTrack"

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_46

    .line 97
    .end local v1    # "x":Ljava/lang/Exception;
    :catch_4e
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_9
.end method
