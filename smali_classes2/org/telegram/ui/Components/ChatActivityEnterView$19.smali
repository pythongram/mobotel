.class Lorg/telegram/ui/Components/ChatActivityEnterView$19;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field final synthetic val$fragment:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/ui/ChatActivity;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 1189
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$19;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$19;->val$fragment:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1192
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$19;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$19;->val$fragment:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/Telehgram/TextNicer;->showDialog(Landroid/app/Activity;Lorg/telegram/ui/ChatActivity;)V

    .line 1193
    const/4 v0, 0x1

    return v0
.end method
