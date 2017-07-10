.class Lorg/telegram/ui/Components/ChatDialogsView$3;
.super Ljava/lang/Object;
.source "ChatDialogsView.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatDialogsView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatDialogsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatDialogsView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 102
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatDialogsView$3;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$3;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    # getter for: Lorg/telegram/ui/Components/ChatDialogsView;->delegate:Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$100(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$3;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    # getter for: Lorg/telegram/ui/Components/ChatDialogsView;->delegate:Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$100(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;->didPressedOnSubDialog(I)V

    .line 107
    :cond_1b
    return-void
.end method
