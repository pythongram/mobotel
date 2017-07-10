.class Lorg/telegram/ui/Components/ChatDialogsView$5;
.super Ljava/lang/Object;
.source "ChatDialogsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 151
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatDialogsView$5;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 153
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$5;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->btnPressed()V

    .line 154
    return-void
.end method
