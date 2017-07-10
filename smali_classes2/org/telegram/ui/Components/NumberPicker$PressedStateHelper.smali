.class Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Lorg/telegram/ui/Components/NumberPicker;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/NumberPicker;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/NumberPicker;

    .prologue
    .line 963
    iput-object p1, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 967
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->MODE_PRESS:I

    .line 968
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .registers 6
    .param p1, "button"    # I

    .prologue
    .line 988
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->cancel()V

    .line 989
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->mMode:I

    .line 990
    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 991
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lorg/telegram/ui/Components/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 992
    return-void
.end method

.method public buttonTapped(I)V
    .registers 3
    .param p1, "button"    # I

    .prologue
    .line 995
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->cancel()V

    .line 996
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->mMode:I

    .line 997
    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 998
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 999
    return-void
.end method

.method public cancel()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 974
    iput v4, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->mMode:I

    .line 975
    iput v4, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 976
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 977
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    # getter for: Lorg/telegram/ui/Components/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/NumberPicker;->access$100(Lorg/telegram/ui/Components/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 978
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    # setter for: Lorg/telegram/ui/Components/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v4}, Lorg/telegram/ui/Components/NumberPicker;->access$102(Lorg/telegram/ui/Components/NumberPicker;Z)Z

    .line 979
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    # getter for: Lorg/telegram/ui/Components/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Lorg/telegram/ui/Components/NumberPicker;->access$200(Lorg/telegram/ui/Components/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lorg/telegram/ui/Components/NumberPicker;->invalidate(IIII)V

    .line 981
    :cond_2e
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    # setter for: Lorg/telegram/ui/Components/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v4}, Lorg/telegram/ui/Components/NumberPicker;->access$302(Lorg/telegram/ui/Components/NumberPicker;Z)Z

    .line 982
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    # getter for: Lorg/telegram/ui/Components/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/NumberPicker;->access$300(Lorg/telegram/ui/Components/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 983
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    # getter for: Lorg/telegram/ui/Components/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v2}, Lorg/telegram/ui/Components/NumberPicker;->access$400(Lorg/telegram/ui/Components/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lorg/telegram/ui/Components/NumberPicker;->invalidate(IIII)V

    .line 985
    :cond_4c
    return-void
.end method

.method public run()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1003
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->mMode:I

    packed-switch v0, :pswitch_data_b2

    .line 1041
    :goto_7
    return-void

    .line 1005
    :pswitch_8
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_ba

    goto :goto_7

    .line 1007
    :pswitch_e
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    # setter for: Lorg/telegram/ui/Components/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->access$102(Lorg/telegram/ui/Components/NumberPicker;Z)Z

    .line 1008
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    # getter for: Lorg/telegram/ui/Components/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Lorg/telegram/ui/Components/NumberPicker;->access$200(Lorg/telegram/ui/Components/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lorg/telegram/ui/Components/NumberPicker;->invalidate(IIII)V

    goto :goto_7

    .line 1012
    :pswitch_2b
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    # setter for: Lorg/telegram/ui/Components/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->access$302(Lorg/telegram/ui/Components/NumberPicker;Z)Z

    .line 1013
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    # getter for: Lorg/telegram/ui/Components/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v2}, Lorg/telegram/ui/Components/NumberPicker;->access$400(Lorg/telegram/ui/Components/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lorg/telegram/ui/Components/NumberPicker;->invalidate(IIII)V

    goto :goto_7

    .line 1019
    :pswitch_42
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_c2

    goto :goto_7

    .line 1021
    :pswitch_48
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    # getter for: Lorg/telegram/ui/Components/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/NumberPicker;->access$100(Lorg/telegram/ui/Components/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 1022
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    .line 1023
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v2, v1

    .line 1022
    invoke-virtual {v0, p0, v2, v3}, Lorg/telegram/ui/Components/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1025
    :cond_5a
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    # getter for: Lorg/telegram/ui/Components/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v1}, Lorg/telegram/ui/Components/NumberPicker;->access$100(Lorg/telegram/ui/Components/NumberPicker;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    # setter for: Lorg/telegram/ui/Components/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->access$102(Lorg/telegram/ui/Components/NumberPicker;Z)Z

    .line 1026
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    # getter for: Lorg/telegram/ui/Components/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Lorg/telegram/ui/Components/NumberPicker;->access$200(Lorg/telegram/ui/Components/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lorg/telegram/ui/Components/NumberPicker;->invalidate(IIII)V

    goto :goto_7

    .line 1030
    :pswitch_7f
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    # getter for: Lorg/telegram/ui/Components/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/NumberPicker;->access$300(Lorg/telegram/ui/Components/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_91

    .line 1031
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    .line 1032
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v2, v1

    .line 1031
    invoke-virtual {v0, p0, v2, v3}, Lorg/telegram/ui/Components/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1034
    :cond_91
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    # getter for: Lorg/telegram/ui/Components/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v1}, Lorg/telegram/ui/Components/NumberPicker;->access$300(Lorg/telegram/ui/Components/NumberPicker;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    # setter for: Lorg/telegram/ui/Components/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->access$302(Lorg/telegram/ui/Components/NumberPicker;Z)Z

    .line 1035
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    # getter for: Lorg/telegram/ui/Components/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v2}, Lorg/telegram/ui/Components/NumberPicker;->access$400(Lorg/telegram/ui/Components/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lorg/telegram/ui/Components/NumberPicker;->invalidate(IIII)V

    goto/16 :goto_7

    .line 1003
    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_42
    .end packed-switch

    .line 1005
    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_e
        :pswitch_2b
    .end packed-switch

    .line 1019
    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_48
        :pswitch_7f
    .end packed-switch
.end method
