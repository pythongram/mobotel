.class Lorg/telegram/ui/PopupNotificationActivity$3;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "PopupNotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PopupNotificationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PopupNotificationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PopupNotificationActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 442
    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity$3;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 445
    const/4 v0, -0x1

    if-ne p1, v0, :cond_e

    .line 446
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$3;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PopupNotificationActivity;->onFinish()V

    .line 447
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$3;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PopupNotificationActivity;->finish()V

    .line 453
    :cond_d
    :goto_d
    return-void

    .line 448
    :cond_e
    const/4 v0, 0x1

    if-ne p1, v0, :cond_17

    .line 449
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$3;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # invokes: Lorg/telegram/ui/PopupNotificationActivity;->openCurrentMessage()V
    invoke-static {v0}, Lorg/telegram/ui/PopupNotificationActivity;->access$800(Lorg/telegram/ui/PopupNotificationActivity;)V

    goto :goto_d

    .line 450
    :cond_17
    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    .line 451
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$3;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # invokes: Lorg/telegram/ui/PopupNotificationActivity;->switchToNextMessage()V
    invoke-static {v0}, Lorg/telegram/ui/PopupNotificationActivity;->access$900(Lorg/telegram/ui/PopupNotificationActivity;)V

    goto :goto_d
.end method
