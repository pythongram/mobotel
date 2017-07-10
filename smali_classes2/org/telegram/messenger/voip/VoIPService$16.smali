.class Lorg/telegram/messenger/voip/VoIPService$16;
.super Ljava/lang/Object;
.source "VoIPService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/voip/VoIPService;->initiateActualEncryptedCall()V
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
    .line 1068
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$16;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1071
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$16;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # getter for: Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;
    invoke-static {v0}, Lorg/telegram/messenger/voip/VoIPService;->access$2700(Lorg/telegram/messenger/voip/VoIPService;)Lorg/telegram/messenger/voip/VoIPController;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1075
    :goto_8
    return-void

    .line 1073
    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$16;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # invokes: Lorg/telegram/messenger/voip/VoIPService;->updateStats()V
    invoke-static {v0}, Lorg/telegram/messenger/voip/VoIPService;->access$2800(Lorg/telegram/messenger/voip/VoIPService;)V

    .line 1074
    const-wide/16 v0, 0x1388

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_8
.end method
