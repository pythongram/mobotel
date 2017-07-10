.class Lorg/telegram/ui/ChatActivity$34;
.super Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;
.source "ChatActivity.java"


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
    .line 2679
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$34;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 2682
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$34;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 2683
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-eqz v1, :cond_11

    .line 2684
    const/16 v1, 0x64

    .line 2689
    :goto_10
    return v1

    .line 2686
    :cond_11
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$34;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotContextSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 2687
    add-int/lit8 p1, p1, -0x1

    .line 2689
    :cond_1f
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$34;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionGridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getSpanSizeForItem(I)I

    move-result v1

    goto :goto_10
.end method
