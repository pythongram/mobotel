.class Lorg/telegram/ui/Components/StickersAlert$18;
.super Ljava/lang/Object;
.source "StickersAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickersAlert;->updateFields()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/StickersAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickersAlert;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 582
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$18;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 585
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$18;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->installDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$3500(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 586
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$18;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->installDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$3500(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;->onStickerSetUninstalled()V

    .line 588
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$18;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    .line 589
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$18;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersAlert;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$18;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    invoke-static {v1}, Lorg/telegram/ui/Components/StickersAlert;->access$900(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$18;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {v2}, Lorg/telegram/ui/Components/StickersAlert;->access$800(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-static {v0, v1, v3, v2, v3}, Lorg/telegram/messenger/query/StickersQuery;->removeStickersSet(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StickerSet;ILorg/telegram/ui/ActionBar/BaseFragment;Z)V

    .line 590
    return-void
.end method
