.class Lorg/telegram/ui/ChannelCreateActivity$2$2;
.super Ljava/lang/Object;
.source "ChannelCreateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelCreateActivity$2;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelCreateActivity$2;

.field final synthetic val$reqId:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelCreateActivity$2;I)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelCreateActivity$2;

    .prologue
    .line 231
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$2$2;->this$1:Lorg/telegram/ui/ChannelCreateActivity$2;

    iput p2, p0, Lorg/telegram/ui/ChannelCreateActivity$2$2;->val$reqId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 234
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ChannelCreateActivity$2$2;->val$reqId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 235
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$2$2;->this$1:Lorg/telegram/ui/ChannelCreateActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/ui/ChannelCreateActivity;->donePressed:Z
    invoke-static {v1, v2}, Lorg/telegram/ui/ChannelCreateActivity;->access$202(Lorg/telegram/ui/ChannelCreateActivity;Z)Z

    .line 237
    :try_start_12
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16

    .line 241
    :goto_15
    return-void

    .line 238
    :catch_16
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_15
.end method
