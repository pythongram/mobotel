.class public Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "RecyclerViewAccessibilityDelegate.java"


# instance fields
.field final mItemDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

.field final mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .registers 3
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    .line 84
    new-instance v0, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate$1;-><init>(Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;->mItemDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    .line 35
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 36
    return-void
.end method


# virtual methods
.method public getItemDelegate()Landroid/support/v4/view/AccessibilityDelegateCompat;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;->mItemDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 66
    const-class v1, Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 67
    instance-of v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v1, :cond_26

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_26

    move-object v0, p1

    .line 68
    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 69
    .local v0, "rv":Lorg/telegram/messenger/support/widget/RecyclerView;
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 70
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 73
    .end local v0    # "rv":Lorg/telegram/messenger/support/widget/RecyclerView;
    :cond_26
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 57
    const-class v0, Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 59
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 61
    :cond_23
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 45
    const/4 v0, 0x1

    .line 51
    :goto_7
    return v0

    .line 47
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 48
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_7

    .line 51
    :cond_21
    const/4 v0, 0x0

    goto :goto_7
.end method

.method shouldIgnore()Z
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v0

    return v0
.end method
