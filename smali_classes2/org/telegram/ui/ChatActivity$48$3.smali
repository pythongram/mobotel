.class Lorg/telegram/ui/ChatActivity$48$3;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$48;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$48;

.field final synthetic val$datePicker:Landroid/widget/DatePicker;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$48;Landroid/widget/DatePicker;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$48;

    .prologue
    .line 3358
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$48$3;->this$1:Lorg/telegram/ui/ChatActivity$48;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$48$3;->val$datePicker:Landroid/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 3361
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$48$3;->val$datePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getChildCount()I

    move-result v2

    .line 3362
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_7
    if-ge v0, v2, :cond_1c

    .line 3363
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$48$3;->val$datePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4, v0}, Landroid/widget/DatePicker;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3364
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 3365
    .local v3, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3366
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3362
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3368
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1c
    const-string v4, ""

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3369
    return-void
.end method
