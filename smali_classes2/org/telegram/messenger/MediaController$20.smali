.class Lorg/telegram/messenger/MediaController$20;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->stopRecording(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;

.field final synthetic val$send:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController;I)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 2860
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$20;->this$0:Lorg/telegram/messenger/MediaController;

    iput p2, p0, Lorg/telegram/messenger/MediaController$20;->val$send:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2863
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$20;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$000(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioRecord;

    move-result-object v2

    if-nez v2, :cond_9

    .line 2890
    :goto_8
    return-void

    .line 2867
    :cond_9
    :try_start_9
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$20;->this$0:Lorg/telegram/messenger/MediaController;

    iget v3, p0, Lorg/telegram/messenger/MediaController$20;->val$send:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/MediaController;->access$1202(Lorg/telegram/messenger/MediaController;I)I

    .line 2868
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$20;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$000(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioRecord;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_3b

    .line 2875
    :cond_19
    :goto_19
    iget v2, p0, Lorg/telegram/messenger/MediaController$20;->val$send:I

    if-nez v2, :cond_23

    .line 2876
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$20;->this$0:Lorg/telegram/messenger/MediaController;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/messenger/MediaController;->access$1300(Lorg/telegram/messenger/MediaController;I)V

    .line 2879
    :cond_23
    :try_start_23
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 2880
    .local v1, "v":Landroid/os/Vibrator;
    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_32} :catch_51

    .line 2884
    .end local v1    # "v":Landroid/os/Vibrator;
    :goto_32
    new-instance v2, Lorg/telegram/messenger/MediaController$20$1;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MediaController$20$1;-><init>(Lorg/telegram/messenger/MediaController$20;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_8

    .line 2869
    :catch_3b
    move-exception v0

    .line 2870
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2871
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$20;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$5200(Lorg/telegram/messenger/MediaController;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 2872
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$20;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$5200(Lorg/telegram/messenger/MediaController;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_19

    .line 2881
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_51
    move-exception v0

    .line 2882
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_32
.end method
