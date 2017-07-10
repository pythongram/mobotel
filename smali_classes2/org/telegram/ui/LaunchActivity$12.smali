.class Lorg/telegram/ui/LaunchActivity$12;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->runLinkRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;

.field final synthetic val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 1624
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$12;->this$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$12;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 6
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 1627
    if-nez p2, :cond_d

    move-object v0, p1

    .line 1628
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 1629
    .local v0, "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 1631
    .end local v0    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_d
    new-instance v1, Lorg/telegram/ui/LaunchActivity$12$1;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/ui/LaunchActivity$12$1;-><init>(Lorg/telegram/ui/LaunchActivity$12;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1674
    return-void
.end method
