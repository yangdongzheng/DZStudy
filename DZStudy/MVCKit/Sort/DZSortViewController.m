//
//  DZSortViewController.m
//  DZStudy
//
//  Created by 杨东正 on 2017/7/26.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import "DZSortViewController.h"

@interface DZSortViewController ()

@end

@implementation DZSortViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Override point for customization after application launch
    
    //    int test[10]={1, 2, 3, 4, 5, 6, 7, 8, 9, 0};
    int test[10]={9, 8, 7, 6, 5, 4, 3, 2, 1, 0};
    // 插入排序
    //    InsertSort(test, 10);
    //    ShellInsertSort(test, 10);
    
    // 选择排序
    //    SelectSort(test, 10);
    HeapSort(test, 10);
    
    
    // 交互排序
    //    bubbleSort(test, 10);
    //    quickSort_recursive(test, 0, 9);
    
    // 归并排序
    //    merge_sort(test, 10);
    
    
    for (int i = 0; i < 10; i++) {
        printf("%d, ",test[i]);
    }
}

// 直接插入排序
void InsertSort(int a[], int n)
{
    for(int i = 1; i < n; i++)
    {
        if (a[i - 1] > a[i]) {
            for (int j = i; j > 0; j--) {
                if (a[j - 1] > a[j]) {
                    int temp = a[j];
                    a[j] = a[j- 1];
                    a[j-1] = temp;
                }
            }
        }
    }
}

// 希尔排序是插入的优化
void ShellInsertSort(int a[], int n)
{
    for (int gap = 5; gap > 0; gap--) // 确定步长，直到步长为1
    {
        for (int i = gap; i < n; i++) // 以步长为间隔进行排序
        {
            int temp = a[i];
            int j;
            for (j = i - gap; j >= 0 && a[j] > temp; j -= gap) {
                a[j + gap] = a[j];
            }
            a[j + gap] = temp;
        }
    }
}

// 选择排序
void SelectSort(int a[], int n)
{
    for (int i = 0; i < n; i++)
    {
        int min = a[i];
        int index = i;
        for (int j = i; j < n; j++) {   // 每次选出序列中最小的数
            if (a[j] < min) {
                min = a[j];
                index = j;
            };
        }
        a[index] = a[i];
        a[i] = min;    // 将每次选好的数放在正确的位置
    }
}

// 堆排序
void HeapAdjust(int H[],int s, int length)
{
    int tmp  = H[s];
    int child = 2 * s + 1; //左孩子结点的位置。(i+1 为当前调整结点的右孩子结点的位置)
    while (child < length)
    {
        if(child+1 < length && H[child] < H[child + 1])  // 如果右孩子大于左孩子(找到比当前待调整结点大的孩子结点)
            ++child;
        if(H[s] < H[child])
        {  // 如果较大的子结点大于父结点
            H[s] = H[child]; // 那么把较大的子结点往上移动，替换它的父结点
            s = child;       // 重新设置s ,即待调整的下一个结点的位置
            child = 2 * s + 1;
        }
        else            // 如果当前待调整结点大于它的左右孩子，则不需要调整，直接退出
            break;
        H[s] = tmp;         // 当前待调整的结点放到比其大的孩子结点位置上
    }
}

/**
 * 初始堆进行调整
 * 将H[0..length-1]建成堆
 * 调整完之后第一个元素是序列的最小的元素
 */
void BuildingHeap(int H[], int length)
{
    //最后一个有孩子的节点的位置 i=  (length -1) / 2
    for (int i = (length -1) / 2 ; i >= 0; i--)
        HeapAdjust(H,i,length);
}
/**
 * 堆排序算法
 */
void HeapSort(int H[],int length)
{
    //初始堆
    BuildingHeap(H, length);
    //从最后一个元素开始对序列进行调整
    for (int i = length - 1; i > 0; --i)
    {
        //交换堆顶元素H[0]和堆中最后一个元素
        int temp = H[i];
        H[i] = H[0];
        H[0] = temp;
        //每次交换堆顶元素和堆中最后一个元素之后，都要对堆进行调整
        HeapAdjust(H,0,i);
    }
}

// 冒泡排序
void bubbleSort(int a[], int n)
{
    for(int i = 0; i < n; i++) {
        for(int j = 0; j < n - i; j++) {
            if(a[j] > a[j+1]) {
                int tmp = a[j];
                a[j] = a[j+1];
                a[j+1] = tmp;
            }
        }
    }
}

//快速排序
void quickSort_recursive(int a[], int low, int high)
{
    int first = low;
    int last = high;
    int key = a[first];
    if(low >= high) return;
    
    while(first < last)
    {
        while((first < last)&&(key <= a[last]))
            last--;
        a[first] = a[last];
        
        while((first < last)&&(key >= a[first]))
            first++;
        a[last] = a[first];
    }
    a[first] = key;
    quickSort_recursive(a, low, first-1);
    quickSort_recursive(a, first+1, high);
}

//归并排序
void merge_sort_recursive(int arr[], int reg[], int start, int end)
{
    if (start >= end)
        return;
    int len = end - start, mid = (len >> 1) + start;
    int start1 = start, end1 = mid;
    int start2 = mid + 1, end2 = end;
    merge_sort_recursive(arr, reg, start1, end1);
    merge_sort_recursive(arr, reg, start2, end2);
    int k = start;
    while (start1 <= end1 && start2 <= end2)
        reg[k++] = arr[start1] < arr[start2] ? arr[start1++] : arr[start2++];
    while (start1 <= end1)
        reg[k++] = arr[start1++];
    while (start2 <= end2)
        reg[k++] = arr[start2++];
    for (k = start; k <= end; k++)
        arr[k] = reg[k];
}

void merge_sort(int arr[], const int len)
{
    int reg[len];
    merge_sort_recursive(arr, reg, 0, len - 1);
}


@end
