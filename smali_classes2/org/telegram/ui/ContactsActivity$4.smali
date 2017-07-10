.class Lorg/telegram/ui/ContactsActivity$4;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
.source "ContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ContactsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ContactsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ContactsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ContactsActivity;

    .prologue
    .line 387
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lorg/telegram/messenger/support/widget/RecyclerView;I)V
    .registers 4
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 390
    const/4 v0, 0x1

    if-ne p2, v0, :cond_20

    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    # getter for: Lorg/telegram/ui/ContactsActivity;->searching:Z
    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$000(Lorg/telegram/ui/ContactsActivity;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    # getter for: Lorg/telegram/ui/ContactsActivity;->searchWas:Z
    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$200(Lorg/telegram/ui/ContactsActivity;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 391
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 393
    :cond_20
    return-void
.end method

.method public onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .registers 4
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 397
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;->onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V

    .line 398
    return-void
.end method
