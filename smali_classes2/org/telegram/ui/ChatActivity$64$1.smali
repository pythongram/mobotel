.class Lorg/telegram/ui/ChatActivity$64$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$64;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$64;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$64;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$64;

    .prologue
    .line 4364
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$64$1;->this$1:Lorg/telegram/ui/ChatActivity$64;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4367
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64$1;->this$1:Lorg/telegram/ui/ChatActivity$64;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 4368
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64$1;->this$1:Lorg/telegram/ui/ChatActivity$64;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$64$1;->this$1:Lorg/telegram/ui/ChatActivity$64;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$13200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v4

    move-object v3, v2

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->showReplyPanel(ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$WebPage;Z)V

    .line 4369
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64$1;->this$1:Lorg/telegram/ui/ChatActivity$64;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$13202(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$WebPage;)Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 4371
    :cond_24
    return-void
.end method
