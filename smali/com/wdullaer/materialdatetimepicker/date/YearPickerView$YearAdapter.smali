.class Lcom/wdullaer/materialdatetimepicker/date/YearPickerView$YearAdapter;
.super Landroid/widget/ArrayAdapter;
.source "YearPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YearAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;


# direct methods
.method public constructor <init>(Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView$YearAdapter;->this$0:Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;

    .line 106
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 107
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 111
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/wdullaer/materialdatetimepicker/date/TextViewWithCircularIndicator;

    .line 113
    .local v1, "v":Lcom/wdullaer/materialdatetimepicker/date/TextViewWithCircularIndicator;
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView$YearAdapter;->this$0:Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;

    # getter for: Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;
    invoke-static {v3}, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;->access$000(Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;)Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    move-result-object v3

    invoke-interface {v3}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->getAccentColor()I

    move-result v3

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView$YearAdapter;->this$0:Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;

    # getter for: Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;
    invoke-static {v4}, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;->access$000(Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;)Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    move-result-object v4

    invoke-interface {v4}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->isThemeDark()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/wdullaer/materialdatetimepicker/date/TextViewWithCircularIndicator;->setAccentColor(IZ)V

    .line 114
    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/date/TextViewWithCircularIndicator;->requestLayout()V

    .line 115
    # invokes: Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;->getYearFromTextView(Landroid/widget/TextView;)I
    invoke-static {v1}, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;->access$100(Landroid/widget/TextView;)I

    move-result v2

    .line 116
    .local v2, "year":I
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView$YearAdapter;->this$0:Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;

    # getter for: Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;
    invoke-static {v3}, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;->access$000(Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;)Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    move-result-object v3

    invoke-interface {v3}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->getSelectedDay()Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    move-result-object v3

    iget v3, v3, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->year:I

    if-ne v3, v2, :cond_3e

    const/4 v0, 0x1

    .line 117
    .local v0, "selected":Z
    :goto_33
    invoke-virtual {v1, v0}, Lcom/wdullaer/materialdatetimepicker/date/TextViewWithCircularIndicator;->drawIndicator(Z)V

    .line 118
    if-eqz v0, :cond_3d

    .line 119
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView$YearAdapter;->this$0:Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;

    # setter for: Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;->mSelectedView:Lcom/wdullaer/materialdatetimepicker/date/TextViewWithCircularIndicator;
    invoke-static {v3, v1}, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;->access$202(Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;Lcom/wdullaer/materialdatetimepicker/date/TextViewWithCircularIndicator;)Lcom/wdullaer/materialdatetimepicker/date/TextViewWithCircularIndicator;

    .line 121
    :cond_3d
    return-object v1

    .line 116
    .end local v0    # "selected":Z
    :cond_3e
    const/4 v0, 0x0

    goto :goto_33
.end method
