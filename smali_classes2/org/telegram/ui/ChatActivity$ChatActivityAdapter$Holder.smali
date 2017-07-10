.class Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$Holder;
.super Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Landroid/view/View;)V
    .registers 3
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 10133
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$Holder;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    .line 10134
    invoke-direct {p0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 10135
    return-void
.end method
