.class Lorg/telegram/ui/GroupCreateActivity$10;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
.source "GroupCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCreateActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCreateActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCreateActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 611
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$10;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lorg/telegram/messenger/support/widget/RecyclerView;I)V
    .registers 4
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 614
    const/4 v0, 0x1

    if-ne p2, v0, :cond_c

    .line 615
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$10;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;
    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 617
    :cond_c
    return-void
.end method
