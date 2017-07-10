.class Lorg/telegram/ui/Telehgram/OnlineContactsActivity$4;
.super Ljava/lang/Object;
.source "OnlineContactsActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    .prologue
    .line 366
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$4;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 376
    invoke-virtual {p1}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 377
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    .line 379
    :cond_9
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "i"    # I

    .prologue
    .line 369
    const/4 v0, 0x1

    if-ne p2, v0, :cond_20

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$4;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->searching:Z
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->access$000(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$4;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->searchWas:Z
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->access$100(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$4;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 372
    :cond_20
    return-void
.end method
