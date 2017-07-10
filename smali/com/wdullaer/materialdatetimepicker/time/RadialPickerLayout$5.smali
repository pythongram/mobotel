.class Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$5;
.super Ljava/lang/Object;
.source "RadialPickerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

.field final synthetic val$isInnerCircle:[Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;[Ljava/lang/Boolean;)V
    .registers 3

    .prologue
    .line 747
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$5;->this$0:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iput-object p2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$5;->val$isInnerCircle:[Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 750
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$5;->this$0:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    # setter for: Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDoingMove:Z
    invoke-static {v0, v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->access$502(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;Z)Z

    .line 751
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$5;->this$0:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$5;->this$0:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$5;->this$0:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    # getter for: Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDownDegrees:I
    invoke-static {v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->access$700(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$5;->val$isInnerCircle:[Ljava/lang/Boolean;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    # invokes: Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getTimeFromDegrees(IZZ)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    invoke-static {v1, v2, v3, v4}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->access$800(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;IZZ)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v1

    # setter for: Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mLastValueSelected:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    invoke-static {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->access$602(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .line 753
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$5;->this$0:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$5;->this$0:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$5;->this$0:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    # getter for: Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mLastValueSelected:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    invoke-static {v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->access$600(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v2

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$5;->this$0:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v3}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v3

    # invokes: Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->roundToValidTime(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;I)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    invoke-static {v1, v2, v3}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->access$900(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;Lcom/wdullaer/materialdatetimepicker/time/Timepoint;I)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v1

    # setter for: Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mLastValueSelected:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    invoke-static {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->access$602(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .line 755
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$5;->this$0:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$5;->this$0:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    # getter for: Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mLastValueSelected:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    invoke-static {v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->access$600(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$5;->this$0:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v2

    # invokes: Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->reselectSelector(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;ZI)V
    invoke-static {v0, v1, v5, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->access$1000(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;Lcom/wdullaer/materialdatetimepicker/time/Timepoint;ZI)V

    .line 756
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$5;->this$0:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    # getter for: Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mListener:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;
    invoke-static {v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->access$1100(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$5;->this$0:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    # getter for: Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mLastValueSelected:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    invoke-static {v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->access$600(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    .line 757
    return-void
.end method
