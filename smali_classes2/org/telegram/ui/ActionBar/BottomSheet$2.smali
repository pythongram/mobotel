.class Lorg/telegram/ui/ActionBar/BottomSheet$2;
.super Ljava/lang/Object;
.source "BottomSheet.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/BottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ActionBar/BottomSheet;

    .prologue
    .line 551
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$2;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 555
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$2;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    # setter for: Lorg/telegram/ui/ActionBar/BottomSheet;->lastInsets:Landroid/view/WindowInsets;
    invoke-static {v0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$502(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 556
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 557
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method
