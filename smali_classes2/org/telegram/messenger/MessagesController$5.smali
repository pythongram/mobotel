.class final Lorg/telegram/messenger/MessagesController$5;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic val$reqId:I


# direct methods
.method constructor <init>(ILorg/telegram/ui/ActionBar/BaseFragment;)V
    .registers 3

    .prologue
    .line 667
    iput p1, p0, Lorg/telegram/messenger/MessagesController$5;->val$reqId:I

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$5;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 670
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/MessagesController$5;->val$reqId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 672
    :try_start_a
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_18

    .line 676
    :goto_d
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$5;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_17

    .line 677
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$5;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setVisibleDialog(Landroid/app/Dialog;)V

    .line 679
    :cond_17
    return-void

    .line 673
    :catch_18
    move-exception v0

    .line 674
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method
