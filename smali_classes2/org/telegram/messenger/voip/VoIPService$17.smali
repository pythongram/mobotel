.class Lorg/telegram/messenger/voip/VoIPService$17;
.super Ljava/lang/Object;
.source "VoIPService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/voip/VoIPService;->startConnectingSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/voip/VoIPService;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/voip/VoIPService;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 1198
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$17;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1201
    # getter for: Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->access$1900()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1207
    :cond_8
    :goto_8
    return-void

    .line 1203
    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$17;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # getter for: Lorg/telegram/messenger/voip/VoIPService;->spPlayID:I
    invoke-static {v0}, Lorg/telegram/messenger/voip/VoIPService;->access$2900(Lorg/telegram/messenger/voip/VoIPService;)I

    move-result v0

    if-nez v0, :cond_2a

    .line 1204
    iget-object v7, p0, Lorg/telegram/messenger/voip/VoIPService$17;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$17;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # getter for: Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lorg/telegram/messenger/voip/VoIPService;->access$2400(Lorg/telegram/messenger/voip/VoIPService;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$17;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # getter for: Lorg/telegram/messenger/voip/VoIPService;->spConnectingId:I
    invoke-static {v1}, Lorg/telegram/messenger/voip/VoIPService;->access$3000(Lorg/telegram/messenger/voip/VoIPService;)I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    # setter for: Lorg/telegram/messenger/voip/VoIPService;->spPlayID:I
    invoke-static {v7, v0}, Lorg/telegram/messenger/voip/VoIPService;->access$2902(Lorg/telegram/messenger/voip/VoIPService;I)I

    .line 1205
    :cond_2a
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$17;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # getter for: Lorg/telegram/messenger/voip/VoIPService;->spPlayID:I
    invoke-static {v0}, Lorg/telegram/messenger/voip/VoIPService;->access$2900(Lorg/telegram/messenger/voip/VoIPService;)I

    move-result v0

    if-nez v0, :cond_8

    .line 1206
    const-wide/16 v0, 0x64

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_8
.end method
