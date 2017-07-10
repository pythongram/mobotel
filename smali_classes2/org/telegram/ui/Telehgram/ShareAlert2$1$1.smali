.class Lorg/telegram/ui/Telehgram/ShareAlert2$1$1;
.super Ljava/lang/Object;
.source "ShareAlert2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/ShareAlert2$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$1;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/ShareAlert2$1;Lorg/telegram/tgnet/TLObject;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/Telehgram/ShareAlert2$1;

    .prologue
    .line 133
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$1$1;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$1;

    iput-object p2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 136
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v0, :cond_24

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$1$1;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$1;

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/ShareAlert2$1;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    # setter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;
    invoke-static {v1, v0}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$002(Lorg/telegram/ui/Telehgram/ShareAlert2;Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;)Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    .line 138
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$1$1;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$1;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/ShareAlert2$1;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->copyLinkOnEnd:Z
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$100(Lorg/telegram/ui/Telehgram/ShareAlert2;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$1$1;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$1;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/ShareAlert2$1;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$1$1;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$1;

    iget-object v1, v1, Lorg/telegram/ui/Telehgram/ShareAlert2$1;->val$context:Landroid/content/Context;

    # invokes: Lorg/telegram/ui/Telehgram/ShareAlert2;->copyLink(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$200(Lorg/telegram/ui/Telehgram/ShareAlert2;Landroid/content/Context;)V

    .line 142
    :cond_24
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$1$1;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$1;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/ShareAlert2$1;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->loadingLink:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$302(Lorg/telegram/ui/Telehgram/ShareAlert2;Z)Z

    .line 143
    return-void
.end method
