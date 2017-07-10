.class Lorg/telegram/messenger/voip/VoIPService$22;
.super Ljava/lang/Object;
.source "VoIPService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/voip/VoIPService;->onUIForegroundStateChanged(Z)V
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
    .line 1459
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$22;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1462
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService$22;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    const-class v3, Lorg/telegram/ui/VoIPActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1463
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x30000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1465
    :try_start_e
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService$22;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_19
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_e .. :try_end_19} :catch_1a

    .line 1469
    :goto_19
    return-void

    .line 1466
    :catch_1a
    move-exception v0

    .line 1467
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "error restarting activity"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19
.end method
