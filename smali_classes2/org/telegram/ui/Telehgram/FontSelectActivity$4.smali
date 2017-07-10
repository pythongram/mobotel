.class Lorg/telegram/ui/Telehgram/FontSelectActivity$4;
.super Ljava/lang/Object;
.source "FontSelectActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/FontSelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/FontSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/FontSelectActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/FontSelectActivity;

    .prologue
    .line 118
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity$4;->this$0:Lorg/telegram/ui/Telehgram/FontSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .param p1, "paramAnonymousAbsListView"    # Landroid/widget/AbsListView;
    .param p2, "paramAnonymousInt1"    # I
    .param p3, "paramAnonymousInt2"    # I
    .param p4, "paramAnonymousInt3"    # I

    .prologue
    .line 121
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 125
    const/4 v0, 0x1

    if-ne p2, v0, :cond_10

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity$4;->this$0:Lorg/telegram/ui/Telehgram/FontSelectActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/FontSelectActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 127
    :cond_10
    return-void
.end method
