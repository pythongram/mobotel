.class Lorg/telegram/ui/ProfileActivity$13;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 1080
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .registers 6
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 1083
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    # invokes: Lorg/telegram/ui/ProfileActivity;->checkListViewScroll()V
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$1200(Lorg/telegram/ui/ProfileActivity;)V

    .line 1084
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$4200(Lorg/telegram/ui/ProfileActivity;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->loadMoreMembersRow:I
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$4300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_30

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$4400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->loadMoreMembersRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$4300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    if-le v0, v1, :cond_30

    .line 1085
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/ui/ProfileActivity;->getChannelParticipants(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->access$4500(Lorg/telegram/ui/ProfileActivity;Z)V

    .line 1087
    :cond_30
    return-void
.end method
