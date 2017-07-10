.class Lorg/telegram/messenger/voip/AudioRecordJNI$1;
.super Ljava/lang/Object;
.source "AudioRecordJNI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/voip/AudioRecordJNI;->startThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/voip/AudioRecordJNI;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/voip/AudioRecordJNI;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/voip/AudioRecordJNI;

    .prologue
    .line 148
    iput-object p1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioRecordJNI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 151
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioRecordJNI;

    # getter for: Lorg/telegram/messenger/voip/AudioRecordJNI;->running:Z
    invoke-static {v1}, Lorg/telegram/messenger/voip/AudioRecordJNI;->access$000(Lorg/telegram/messenger/voip/AudioRecordJNI;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 153
    :try_start_8
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioRecordJNI;

    # getter for: Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;
    invoke-static {v1}, Lorg/telegram/messenger/voip/AudioRecordJNI;->access$200(Lorg/telegram/messenger/voip/AudioRecordJNI;)Landroid/media/AudioRecord;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioRecordJNI;

    # getter for: Lorg/telegram/messenger/voip/AudioRecordJNI;->buffer:Ljava/nio/ByteBuffer;
    invoke-static {v2}, Lorg/telegram/messenger/voip/AudioRecordJNI;->access$100(Lorg/telegram/messenger/voip/AudioRecordJNI;)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v3, 0x780

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    .line 154
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioRecordJNI;

    # getter for: Lorg/telegram/messenger/voip/AudioRecordJNI;->running:Z
    invoke-static {v1}, Lorg/telegram/messenger/voip/AudioRecordJNI;->access$000(Lorg/telegram/messenger/voip/AudioRecordJNI;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 155
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioRecordJNI;

    # getter for: Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;
    invoke-static {v1}, Lorg/telegram/messenger/voip/AudioRecordJNI;->access$200(Lorg/telegram/messenger/voip/AudioRecordJNI;)Landroid/media/AudioRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2a} :catch_3e

    .line 163
    :cond_2a
    const-string v1, "tg-voip"

    const-string v2, "audiotrack thread exits"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void

    .line 158
    :cond_32
    :try_start_32
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioRecordJNI;

    iget-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioRecordJNI;

    # getter for: Lorg/telegram/messenger/voip/AudioRecordJNI;->buffer:Ljava/nio/ByteBuffer;
    invoke-static {v2}, Lorg/telegram/messenger/voip/AudioRecordJNI;->access$100(Lorg/telegram/messenger/voip/AudioRecordJNI;)Ljava/nio/ByteBuffer;

    move-result-object v2

    # invokes: Lorg/telegram/messenger/voip/AudioRecordJNI;->nativeCallback(Ljava/nio/ByteBuffer;)V
    invoke-static {v1, v2}, Lorg/telegram/messenger/voip/AudioRecordJNI;->access$300(Lorg/telegram/messenger/voip/AudioRecordJNI;Ljava/nio/ByteBuffer;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3d} :catch_3e

    goto :goto_0

    .line 159
    :catch_3e
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
