.class Lorg/telegram/ui/ChangeUsernameActivity$7;
.super Ljava/lang/Object;
.source "ChangeUsernameActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeUsernameActivity;->saveName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeUsernameActivity;

.field final synthetic val$reqId:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeUsernameActivity;I)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/ChangeUsernameActivity;

    .prologue
    .line 434
    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$7;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    iput p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$7;->val$reqId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 437
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ChangeUsernameActivity$7;->val$reqId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 439
    :try_start_a
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e

    .line 443
    :goto_d
    return-void

    .line 440
    :catch_e
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_d
.end method
