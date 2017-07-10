.class Lorg/telegram/ui/ChatActivity$28;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 2519
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$28;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2522
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$28;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->createUnreadMessageAfterId:I
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10100(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 2523
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$28;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$28;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->createUnreadMessageAfterId:I
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$10100(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$28;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->returnToLoadIndex:I
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$10200(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    # invokes: Lorg/telegram/ui/ChatActivity;->scrollToMessageId(IIZI)V
    invoke-static {v0, v1, v3, v3, v2}, Lorg/telegram/ui/ChatActivity;->access$3500(Lorg/telegram/ui/ChatActivity;IIZI)V

    .line 2529
    :goto_1b
    return-void

    .line 2524
    :cond_1c
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$28;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->returnToMessageId:I
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10300(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-lez v0, :cond_36

    .line 2525
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$28;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$28;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->returnToMessageId:I
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$10300(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$28;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->returnToLoadIndex:I
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$10200(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    # invokes: Lorg/telegram/ui/ChatActivity;->scrollToMessageId(IIZI)V
    invoke-static {v0, v1, v3, v4, v2}, Lorg/telegram/ui/ChatActivity;->access$3500(Lorg/telegram/ui/ChatActivity;IIZI)V

    goto :goto_1b

    .line 2527
    :cond_36
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$28;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->scrollToLastMessage(Z)V
    invoke-static {v0, v4}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;Z)V

    goto :goto_1b
.end method
