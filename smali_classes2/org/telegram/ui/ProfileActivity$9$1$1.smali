.class Lorg/telegram/ui/ProfileActivity$9$1$1;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$9$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ProfileActivity$9$1;

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$9$1;Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;)V
    .registers 3
    .param p1, "this$2"    # Lorg/telegram/ui/ProfileActivity$9$1;

    .prologue
    .line 871
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$1;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->val$req:Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 7
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 874
    if-nez p2, :cond_17

    .line 875
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    .end local p1    # "response":Lorg/telegram/tgnet/TLObject;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 876
    new-instance v0, Lorg/telegram/ui/ProfileActivity$9$1$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ProfileActivity$9$1$1$1;-><init>(Lorg/telegram/ui/ProfileActivity$9$1$1;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 890
    :goto_16
    return-void

    .line 883
    .restart local p1    # "response":Lorg/telegram/tgnet/TLObject;
    :cond_17
    new-instance v0, Lorg/telegram/ui/ProfileActivity$9$1$1$2;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/ProfileActivity$9$1$1$2;-><init>(Lorg/telegram/ui/ProfileActivity$9$1$1;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_16
.end method
