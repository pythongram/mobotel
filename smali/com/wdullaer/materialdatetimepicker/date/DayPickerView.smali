.class public abstract Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;
.super Landroid/widget/ListView;
.source "DayPickerView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wdullaer/materialdatetimepicker/date/DayPickerView$ScrollStateRunnable;
    }
.end annotation


# static fields
.field public static final DAYS_PER_WEEK:I = 0x7

.field protected static final GOTO_SCROLL_DURATION:I = 0xfa

.field public static LIST_TOP_OFFSET:I = 0x0

.field protected static final SCROLL_CHANGE_DELAY:I = 0x28

.field protected static final SCROLL_HYST_WEEKS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MonthFragment"

.field private static YEAR_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field protected mAdapter:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter;

.field protected mContext:Landroid/content/Context;

.field private mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

.field protected mCurrentMonthDisplayed:I

.field protected mCurrentScrollState:I

.field protected mDaysPerWeek:I

.field protected mFirstDayOfWeek:I

.field protected mFriction:F

.field protected mHandler:Landroid/os/Handler;

.field protected mNumWeeks:I

.field private mPerformingScroll:Z

.field protected mPrevMonthName:Ljava/lang/CharSequence;

.field protected mPreviousScrollPosition:J

.field protected mPreviousScrollState:I

.field protected mScrollStateChangedRunnable:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView$ScrollStateRunnable;

.field protected mSelectedDay:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

.field protected mShowWeekNumber:Z

.field protected mTempDay:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 59
    const/4 v0, -0x1

    sput v0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->LIST_TOP_OFFSET:I

    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->YEAR_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    const/4 v0, 0x6

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mNumWeeks:I

    .line 63
    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mShowWeekNumber:Z

    .line 64
    const/4 v0, 0x7

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mDaysPerWeek:I

    .line 68
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mFriction:F

    .line 74
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    invoke-direct {v0}, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mSelectedDay:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    .line 77
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    invoke-direct {v0}, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mTempDay:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    .line 88
    iput v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mPreviousScrollState:I

    .line 90
    iput v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mCurrentScrollState:I

    .line 284
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView$ScrollStateRunnable;

    invoke-direct {v0, p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView$ScrollStateRunnable;-><init>(Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mScrollStateChangedRunnable:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView$ScrollStateRunnable;

    .line 97
    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->init(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x6

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mNumWeeks:I

    .line 63
    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mShowWeekNumber:Z

    .line 64
    const/4 v0, 0x7

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mDaysPerWeek:I

    .line 68
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mFriction:F

    .line 74
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    invoke-direct {v0}, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mSelectedDay:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    .line 77
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    invoke-direct {v0}, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mTempDay:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    .line 88
    iput v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mPreviousScrollState:I

    .line 90
    iput v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mCurrentScrollState:I

    .line 284
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView$ScrollStateRunnable;

    invoke-direct {v0, p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView$ScrollStateRunnable;-><init>(Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mScrollStateChangedRunnable:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView$ScrollStateRunnable;

    .line 102
    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->init(Landroid/content/Context;)V

    .line 103
    invoke-virtual {p0, p2}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->setController(Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;)V

    .line 104
    return-void
.end method

.method private findAccessibilityFocus()Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;
    .registers 7

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->getChildCount()I

    move-result v1

    .line 382
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    if-ge v3, v1, :cond_27

    .line 383
    invoke-virtual {p0, v3}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 384
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;

    if-eqz v4, :cond_24

    move-object v4, v0

    .line 385
    check-cast v4, Lcom/wdullaer/materialdatetimepicker/date/MonthView;

    invoke-virtual {v4}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->getAccessibilityFocus()Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    move-result-object v2

    .line 386
    .local v2, "focus":Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;
    if-eqz v2, :cond_24

    .line 387
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ne v4, v5, :cond_23

    .line 389
    check-cast v0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->clearAccessibilityFocus()V

    .line 396
    .end local v2    # "focus":Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;
    :cond_23
    :goto_23
    return-object v2

    .line 382
    .restart local v0    # "child":Landroid/view/View;
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 396
    .end local v0    # "child":Landroid/view/View;
    :cond_27
    const/4 v2, 0x0

    goto :goto_23
.end method

.method private static getMonthAndYearString(Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;)Ljava/lang/String;
    .registers 7
    .param p0, "day"    # Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    .prologue
    const/4 v5, 0x2

    .line 442
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 443
    .local v0, "cal":Ljava/util/Calendar;
    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->year:I

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->month:I

    iget v4, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->day:I

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 445
    const-string v1, ""

    .line 446
    .local v1, "sbuf":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v0, v5, v5, v3}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->YEAR_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 449
    return-object v1
.end method

.method private restoreAccessibilityFocus(Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;)Z
    .registers 7
    .param p1, "day"    # Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    .prologue
    const/4 v3, 0x0

    .line 407
    if-nez p1, :cond_4

    .line 421
    :cond_3
    :goto_3
    return v3

    .line 411
    :cond_4
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->getChildCount()I

    move-result v1

    .line 412
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_3

    .line 413
    invoke-virtual {p0, v2}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 414
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;

    if-eqz v4, :cond_1d

    .line 415
    check-cast v0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->restoreAccessibilityFocus(Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 416
    const/4 v3, 0x1

    goto :goto_3

    .line 412
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9
.end method


# virtual methods
.method public abstract createMonthAdapter(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;)Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter;
.end method

.method public getMostVisiblePosition()I
    .registers 12

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->getFirstVisiblePosition()I

    move-result v3

    .line 347
    .local v3, "firstPosition":I
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->getHeight()I

    move-result v4

    .line 349
    .local v4, "height":I
    const/4 v6, 0x0

    .line 350
    .local v6, "maxDisplayedHeight":I
    const/4 v7, 0x0

    .line 351
    .local v7, "mostVisibleIndex":I
    const/4 v5, 0x0

    .line 352
    .local v5, "i":I
    const/4 v0, 0x0

    .line 353
    .local v0, "bottom":I
    :goto_c
    if-ge v0, v4, :cond_14

    .line 354
    invoke-virtual {p0, v5}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 355
    .local v1, "child":Landroid/view/View;
    if-nez v1, :cond_17

    .line 366
    .end local v1    # "child":Landroid/view/View;
    :cond_14
    add-int v8, v3, v7

    return v8

    .line 358
    .restart local v1    # "child":Landroid/view/View;
    :cond_17
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 359
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    sub-int v2, v8, v9

    .line 360
    .local v2, "displayedHeight":I
    if-le v2, v6, :cond_2e

    .line 361
    move v7, v5

    .line 362
    move v6, v2

    .line 364
    :cond_2e
    add-int/lit8 v5, v5, 0x1

    .line 365
    goto :goto_c
.end method

.method public goTo(Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;ZZZ)Z
    .registers 15
    .param p1, "day"    # Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;
    .param p2, "animate"    # Z
    .param p3, "setSelected"    # Z
    .param p4, "forceScroll"    # Z

    .prologue
    .line 181
    if-eqz p3, :cond_7

    .line 182
    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mSelectedDay:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    invoke-virtual {v7, p1}, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->set(Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;)V

    .line 185
    :cond_7
    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mTempDay:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    invoke-virtual {v7, p1}, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->set(Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;)V

    .line 186
    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    invoke-interface {v7}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->getStartDate()Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 187
    .local v3, "minMonth":I
    iget v7, p1, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->year:I

    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    invoke-interface {v8}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->getMinYear()I

    move-result v8

    sub-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0xc

    iget v8, p1, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->month:I

    add-int/2addr v7, v8

    sub-int v4, v7, v3

    .line 191
    .local v4, "position":I
    const/4 v1, 0x0

    .line 192
    .local v1, "i":I
    const/4 v6, 0x0

    .line 195
    .local v6, "top":I
    :goto_29
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, v1}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 196
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_78

    .line 207
    :cond_31
    if-eqz v0, :cond_ae

    .line 208
    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->getPositionForView(Landroid/view/View;)I

    move-result v5

    .line 213
    .local v5, "selectedPosition":I
    :goto_37
    if-eqz p3, :cond_40

    .line 214
    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mAdapter:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter;

    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mSelectedDay:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    invoke-virtual {v7, v8}, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter;->setSelectedDay(Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;)V

    .line 217
    :cond_40
    const-string v7, "MonthFragment"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_61

    .line 218
    const-string v7, "MonthFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GoTo position "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_61
    if-ne v4, v5, :cond_65

    if-eqz p4, :cond_b5

    .line 223
    :cond_65
    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mTempDay:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    invoke-virtual {p0, v7}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->setMonthDisplayed(Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;)V

    .line 224
    const/4 v7, 0x2

    iput v7, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mPreviousScrollState:I

    .line 225
    if-eqz p2, :cond_b0

    .line 226
    sget v7, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->LIST_TOP_OFFSET:I

    const/16 v8, 0xfa

    invoke-virtual {p0, v4, v7, v8}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->smoothScrollToPositionFromTop(III)V

    .line 228
    const/4 v7, 0x1

    .line 235
    :goto_77
    return v7

    .line 199
    .end local v5    # "selectedPosition":I
    :cond_78
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    .line 200
    const-string v7, "MonthFragment"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_a9

    .line 201
    const-string v7, "MonthFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "child at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has top "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_a9
    if-gez v6, :cond_31

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_29

    .line 210
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_ae
    const/4 v5, 0x0

    .restart local v5    # "selectedPosition":I
    goto :goto_37

    .line 230
    :cond_b0
    invoke-virtual {p0, v4}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->postSetSelection(I)V

    .line 235
    :cond_b3
    :goto_b3
    const/4 v7, 0x0

    goto :goto_77

    .line 232
    :cond_b5
    if-eqz p3, :cond_b3

    .line 233
    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mSelectedDay:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    invoke-virtual {p0, v7}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->setMonthDisplayed(Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;)V

    goto :goto_b3
.end method

.method public init(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mHandler:Landroid/os/Handler;

    .line 115
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->setDrawSelectorOnTop(Z)V

    .line 118
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mContext:Landroid/content/Context;

    .line 119
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->setUpListView()V

    .line 120
    return-void
.end method

.method protected layoutChildren()V
    .registers 3

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->findAccessibilityFocus()Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    move-result-object v0

    .line 427
    .local v0, "focusedDay":Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 428
    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mPerformingScroll:Z

    if-eqz v1, :cond_f

    .line 429
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mPerformingScroll:Z

    .line 433
    :goto_e
    return-void

    .line 431
    :cond_f
    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->restoreAccessibilityFocus(Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;)Z

    goto :goto_e
.end method

.method public onChange()V
    .registers 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->refreshAdapter()V

    .line 124
    return-void
.end method

.method public onDateChanged()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 371
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    invoke-interface {v0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->getSelectedDay()Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->goTo(Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;ZZZ)Z

    .line 372
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 437
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 438
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 439
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 459
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 460
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_14

    .line 461
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 462
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 468
    :goto_13
    return-void

    .line 465
    :cond_14
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 466
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_13
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 10
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 257
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;

    .line 258
    .local v0, "child":Lcom/wdullaer/materialdatetimepicker/date/MonthView;
    if-nez v0, :cond_a

    .line 266
    :goto_9
    return-void

    .line 263
    :cond_a
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->getHeight()I

    move-result v4

    mul-int/2addr v1, v4

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->getBottom()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-long v2, v1

    .line 264
    .local v2, "currScroll":J
    iput-wide v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mPreviousScrollPosition:J

    .line 265
    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mCurrentScrollState:I

    iput v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mPreviousScrollState:I

    goto :goto_9
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 281
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mScrollStateChangedRunnable:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    .line 282
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 16
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v12, 0x2000

    const/16 v11, 0x1000

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 476
    if-eq p1, v11, :cond_10

    if-eq p1, v12, :cond_10

    .line 478
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v6

    .line 514
    :goto_f
    return v6

    .line 482
    :cond_10
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->getFirstVisiblePosition()I

    move-result v1

    .line 483
    .local v1, "firstVisiblePosition":I
    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    invoke-interface {v7}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->getStartDate()Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 484
    .local v3, "minMonth":I
    add-int v7, v1, v3

    rem-int/lit8 v4, v7, 0xc

    .line 485
    .local v4, "month":I
    add-int v7, v1, v3

    div-int/lit8 v7, v7, 0xc

    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    invoke-interface {v8}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->getMinYear()I

    move-result v8

    add-int v5, v7, v8

    .line 486
    .local v5, "year":I
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    invoke-direct {v0, v5, v4, v6}, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;-><init>(III)V

    .line 489
    .local v0, "day":Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;
    if-ne p1, v11, :cond_57

    .line 490
    iget v7, v0, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->month:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v0, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->month:I

    .line 491
    iget v7, v0, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->month:I

    const/16 v8, 0xc

    if-ne v7, v8, :cond_4a

    .line 492
    iput v9, v0, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->month:I

    .line 493
    iget v7, v0, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->year:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v0, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->year:I

    .line 511
    :cond_4a
    :goto_4a
    invoke-static {v0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->getMonthAndYearString(Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 512
    invoke-virtual {p0, v0, v6, v9, v6}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->goTo(Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;ZZZ)Z

    .line 513
    iput-boolean v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mPerformingScroll:Z

    goto :goto_f

    .line 495
    :cond_57
    if-ne p1, v12, :cond_4a

    .line 496
    invoke-virtual {p0, v9}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 499
    .local v2, "firstVisibleView":Landroid/view/View;
    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    if-lt v7, v10, :cond_4a

    .line 502
    iget v7, v0, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->month:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v0, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->month:I

    .line 503
    iget v7, v0, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->month:I

    if-ne v7, v10, :cond_4a

    .line 504
    const/16 v7, 0xb

    iput v7, v0, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->month:I

    .line 505
    iget v7, v0, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->year:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v0, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->year:I

    goto :goto_4a
.end method

.method public postSetSelection(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->clearFocus()V

    .line 240
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView$1;

    invoke-direct {v0, p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView$1;-><init>(Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;I)V

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->post(Ljava/lang/Runnable;)Z

    .line 247
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 248
    return-void
.end method

.method protected refreshAdapter()V
    .registers 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mAdapter:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter;

    if-nez v0, :cond_16

    .line 132
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    invoke-virtual {p0, v0, v1}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->createMonthAdapter(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;)Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mAdapter:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter;

    .line 137
    :goto_10
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mAdapter:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter;

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    return-void

    .line 134
    :cond_16
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mAdapter:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mSelectedDay:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter;->setSelectedDay(Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;)V

    goto :goto_10
.end method

.method public setController(Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;)V
    .registers 3
    .param p1, "controller"    # Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    .line 108
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    invoke-interface {v0, p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->registerOnDateChangedListener(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateChangedListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->refreshAdapter()V

    .line 110
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->onDateChanged()V

    .line 111
    return-void
.end method

.method protected setMonthDisplayed(Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;)V
    .registers 3
    .param p1, "date"    # Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    .prologue
    .line 273
    iget v0, p1, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->month:I

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mCurrentMonthDisplayed:I

    .line 274
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->invalidateViews()V

    .line 275
    return-void
.end method

.method protected setUpListView()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-virtual {p0, v1}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->setCacheColorHint(I)V

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->setItemsCanFocus(Z)V

    .line 155
    invoke-virtual {p0, v1}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->setFastScrollEnabled(Z)V

    .line 156
    invoke-virtual {p0, v1}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->setVerticalScrollBarEnabled(Z)V

    .line 157
    invoke-virtual {p0, p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 158
    invoke-virtual {p0, v1}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->setFadingEdgeLength(I)V

    .line 160
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mFriction:F

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->setFriction(F)V

    .line 161
    return-void
.end method
