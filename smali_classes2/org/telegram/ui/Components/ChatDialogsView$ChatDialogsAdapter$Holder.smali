.class Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter$Holder;
.super Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.source "ChatDialogsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;Landroid/view/View;)V
    .registers 3
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 654
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter$Holder;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;

    .line 655
    invoke-direct {p0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 656
    return-void
.end method
